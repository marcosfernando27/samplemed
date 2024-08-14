<template>

    <h1 class="text-3xl font-bold text-[#50297A] mb-5">
        Blog da Samplemed
    </h1>

    <div class="flex flex-wrap gap-x-5 gap-y-4">

    <div class="lg:w-full w-full bg-slate-100 rounded-md px-8">
        <h2 class="text-2xl py-5 float-start ">Meus posts</h2>
        <a href="/create" class="py-5 float-end">Adicionar Post</a>
    </div>

        <div class="lg:w-full w-full">
            <table class="my-8 p-6">
                <thead>
                    <tr>
                        <th>Data de criação</th>
                        <th>Título</th>
                        <th>Breve Conteúdo</th>
                        <th>Editar</th>
                        <th>Excluir</th>
                    </tr>
                </thead>

                <tbody>
                    <tr v-for="post in posts" :key=post.id_post>
                        <td>
                            {{ post.created_at }}
                        </td>
                        <td>
                            {{ post.title }}
                        </td>
                        <td>
                            {{ post.body }}
                        </td>
                        <td>

                        </td>
                        <td>

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>

    </div>
</template>

<script>
export default {

    data() {
        return {
            urlBase: '/api/',
            posts: []
        }
    },

    methods: {
        // lista todos posts
        index() {

            this.isLoading = true

            axios.get(this.urlBase + 'blogs')
                .then(response => {

                    this.isLoading = false
                    this.posts = response.data

                })
                .catch(error => {
                    this.isLoading = false
                    console.error(error);
                })
        }
    },

    mounted() {
        this.index()
    }
}
</script>
