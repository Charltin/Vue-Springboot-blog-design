'use strict'
//引入webpack-merge模块，减少重复代码。webpack遵循不重复原则
//用来配合两个配置文件对象并生成一个新的配置文件，有点类似于es6的object.assign()；

const merge = require('webpack-merge')
//引入刚打开的prod.env.js
const prodEnv = require('./prod.env')

module.exports = merge(prodEnv, {
  NODE_ENV: '"development"'
})
