'use strict'
//引入node的path模块
const path = require('path')

module.exports = {
  dev: {

    // Paths  vue-cli
    assetsSubDirectory: 'static', //把所有的静态资源打包到dist下的static文件夹下
    assetsPublicPath: '/',  // 发布路径 history模式，代表生成的index.html文件,里面引入资源路径
    proxyTable: {  //proxyTable是vue-cli为了解决跨域问题，处理api 在本地设置了中间件，所有请求都经过这个代理服务器
      '/api/core': {
        target: 'http://localhost:8080', //目标接口域名
        changeOrigin: true,   // 是否跨域
      }
    },
    // Various Dev Server settings
    host: 'localhost', // can be overwritten by process.env.HOST
    port: 7080, // can be overwritten by process.env.PORT, if port is in use, a free one will be determined
    autoOpenBrowser: false,
    errorOverlay: true, //查询错误
    notifyOnErrors: true,  //通知错误
    //跟devserver相关的一个配置，webpack为我们提供的devserver是可以监控文件改动的，但在有些情况下却不能工作，我们可以设置一个轮询（poll）来解决
    poll: false, // https://webpack.js.org/configuration/dev-server/#devserver-watchoptions-


    /**
     * Source Maps
     */

    // https://webpack.js.org/configuration/devtool/#development
    devtool: 'eval-source-map',
    //每个module会通过eval()来执行，并且生成一个DataUrl形式的SourceMap.
    //webpack提供的方便调试的配置，有四种模式

    // If you have problems debugging vue-files in devtools,
    // set this to false - it *may* help
    // https://vue-loader.vuejs.org/en/options.html#cachebusting
    cacheBusting: true,
    // 一个配合devtool的配置，当给文件名插入新的hash导致清楚缓存时是否生成souce maps，默认在开发环境下为true


    // CSS Sourcemaps off by default because relative paths are "buggy"
    // with this option, according to the CSS-Loader README
    // (https://github.com/webpack/css-loader#sourcemaps)
    // In our experience, they generally work as expected,
    // just be aware of this issue when enabling this option.
    cssSourceMap: false,
  },

  build: {
    // Template for index.html
    index: path.resolve(__dirname, '../dist/index.html'),

    // 打包后的文件根Paths
    assetsRoot: path.resolve(__dirname, '../dist'),
    assetsSubDirectory: 'static',
    assetsPublicPath: './',

    /**
     * Source Maps
     */
    //是否开启source-map
    productionSourceMap: false,
    // https://webpack.js.org/configuration/devtool/#production
    devtool: '#source-map',

    // Gzip off by default as many popular static hosts such as
    // Surge or Netlify already gzip all static assets for you.
    // Before setting to `true`, make sure to:
    // npm install --save-dev compression-webpack-plugin
    //是否压缩
    productionGzip: true,
    //gzip模式下需要压缩的文件的扩展名，设置后会对相应扩展名的文件进行压缩
    productionGzipExtensions: ['js', 'css'],

    // Run the build command with an extra argument to
    // View the bundle analyzer report after build finishes:
    // `npm run build --report`
    // Set to `true` or `false` to always turn it on or off
    //是否开启打包后的分析报告
    bundleAnalyzerReport: process.env.npm_config_report
  }
}
