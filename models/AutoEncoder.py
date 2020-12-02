import tensorflow as tf
import numpy as np
import tensorflow.keras.backend as K
from tensorflow.keras.layers import BatchNormalization, Conv2D, Conv2DTranspose, LeakyReLU, Activation, Flatten, Dense, Reshape, Input
from tensorflow.keras.models import Model, Sequential

class AutoEncoder:
    def __init__(self, width, height, depth, filters=(32, 64), latent_dim=16):
        self.input_shape = (width, height, depth)
        self.filters = filters
        self.inputs = Input(shape=self.input_shape)
        self.latent_dim = latent_dim
        self.volume_size = None

    def encoder(self):
        model = Sequential(name='encoder')
        model.add(Input(shape=self.input_shape))
        for filter in self.filters:
            model.add(Conv2D(filter, kernel_size=(3, 3), strides=2, padding='same'))
            model.add(LeakyReLU(alpha=.2))
            model.add(BatchNormalization(axis=-1))
        model.add(Flatten())
        model.add(Dense(self.latent_dim))
        self.volume_size = K.int_shape(model.layers[len(self.filters)*3-1].output)
        model.summary()
        return model

    def decoder(self):
        model = Sequential(name='decoder')
        model.add(Input(shape=(self.latent_dim,)))
        model.add(Dense(np.prod(self.volume_size[1:])))
        model.add(Reshape((self.volume_size[1], self.volume_size[2], self.volume_size[3])))
        for filter in self.filters[::-1]:
            model.add(Conv2DTranspose(filter, kernel_size=(3, 3), strides=2, padding='same'))
            model.add(LeakyReLU(alpha=.2))
            model.add(BatchNormalization(axis=-1))
        model.add(Conv2DTranspose(self.input_shape[2], (3, 3), padding='same'))
        model.add(Activation('sigmoid'))

        model.summary()
        return model

    def build(self):
        enc = self.encoder()
        dec = self.decoder()
        auto_enc_dec = Model(self.inputs, dec(enc(self.inputs)), name="autoencoder")
        auto_enc_dec.summary()
        return auto_enc_dec

if __name__ == '__main__':
    ae_model = AutoEncoder(32, 32, 3)
    ae_model.build()
