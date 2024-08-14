import './bootstrap';

import {createApp} from 'vue/dist/vue.esm-bundler.js'

import IndexBlog from './components/blog/IndexBlog.vue'

const app = createApp({});

app.component("index-blog-component", IndexBlog)

app.mount("#app");
