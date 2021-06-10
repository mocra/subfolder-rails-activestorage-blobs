const path = require('path')
const { webpackConfig, merge } = require('@rails/webpacker')
const CopyPlugin = require('copy-webpack-plugin')
const webpack = require('webpack')

const customConfig = {
  // Use cheap sourcemap generation
  devtool: 'eval-cheap-module-source-map',
  resolve: {
    extensions: ['.css']
  },
  plugins: [
  ]
}

module.exports = merge(webpackConfig, customConfig)
