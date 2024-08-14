<template>

    <h1 class="text-3xl font-bold text-[#50297A]">
        Blog da Samplemed
    </h1>

    <h2 class="text-2xl py-8 float-start">Adicionar Post</h2>

    <a href="/" class="py-8 float-end">Todos Post</a>

    <form action="" method="post">


    </form>

</template>

<script>
export default {

    data() {
        return {
            urlBase: '/api/',
            formDataPosts: [
                'title',
                'body'
            ]
        }
    },

    methods: {
        // salvar post
        store() {

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
