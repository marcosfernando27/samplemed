import './bootstrap';

import {createApp} from 'vue/dist/vue.esm-bundler.js'

// posts
import IndexPost from './components/posts/IndexPost.vue'
import CreatePost from './components/posts/CreatePost.vue'


const app = createApp({});

// posts
app.component("index-post-component", IndexPost)
app.component("create-post-component", CreatePost)

app.mount("#app");
