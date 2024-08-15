<template>

    <h1>
        Blog da Samplemed
    </h1>

    <div class="flex flex-wrap gap-x-5 gap-y-4">

    <div class="lg:w-full w-full bg-slate-100 rounded-md px-8">
        <h2 class="text-2xl py-5 float-start ">Meus posts</h2>
        <a href="/create" class="link">[+] Adicionar Post</a>
    </div>

        <div class="lg:w-full w-full">
            <table class="my-8 p-6 table-auto table-bordered table-hover">
                <thead>
                    <tr>
                        <th class="border px-4 py-2">Data de criação</th>
                        <th class="border px-4 py-2">Título</th>
                        <th class="border px-4 py-2">Editar</th>
                        <th class="border px-4 py-2">Excluir</th>
                    </tr>
                </thead>

                <tbody>
                    <tr v-for="post in posts" :key=post.id_post>
                        <td class="border  px-4 py-2">
                            {{ post.created_at }}
                        </td>
                        <td class="border px-4 py-2">
                            {{ post.title }}
                        </td>
                        <td class="border px-4 py-2">
                            <a href="#" class="link">Editar</a>
                        </td>
                        <td class="border px-4 py-2">
                            <a href="#" class="link">Excluir</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>

    <!-- Loading -->
    <loading :is-loading="isLoading" />

</template>

<script>
import Loading from "../Loading.vue";

export default {

    components: {
        Loading
    },

    data() {
        return {
            urlBase: '/api/',
            posts: [],
            categories: [],
            isLoading: false
        }
    },

    methods: {
        // lista todos posts
        allPosts() {

            this.isLoading = true

            axios.get(this.urlBase + 'posts')
                .then(response => {

                    this.isLoading = false
                    this.posts = response.data.data

                })
                .catch(error => {
                    this.isLoading = false
                    console.error(error);
                })
        }
    },

    mounted() {
        this.allPosts()
    }
}
</script>
