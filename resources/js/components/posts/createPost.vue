<template>
    <a href="/logout" class="float-end text-red-600">[x] sair</a>

    <h1>
        Blog da Samplemed
    </h1>

    <div class="flex flex-wrap gap-x-5 gap-y-4">

    <div class="lg:w-full w-full bg-slate-100 rounded-md px-8">
        <h2 class="text-2xl py-5 float-start">Adicionar Post</h2>
        <a href="/posts" class="link">Todos Posts</a>
    </div>


    <div class="lg:w-full w-full bg-green-100 text-green-700 rounded-md px-8" v-show="success">
        Post adicionado com Sucesso!
    </div>

    <div class="lg:w-full w-full">
        <form @submit.prevent="store()" method="post">

            <p class="pt-5">
                <label for="title">Selecione a(s) Categoria(s) </label><span class="required">*</span><br>
                <div v-for="category in categories" :key=category.id_category>
                    <input type="checkbox"
                        :id="category.category"
                        v-model=formData.category_id
                        :value="category.id_category"
                        class="my-3 mr-3 text-3xl h-5 w-5"
                        >

                    <label :for=category.category class="text-md"> {{ category.category }}</label>
                </div>

                <span v-if="errors.category_id" class="required">{{ errors.category_id[0] }}</span>
            </p>

            <p class="pt-5">
                <label for="title">Título </label><span class="required">*</span><br>
                <input type="text" maxlength="128" v-model="formData.title" class="form-control" id="title">

                <span v-if="errors.title" class="required">{{ errors.title[0] }}</span>
            </p>

            <p class="pt-5">
                <label for="body">Conteúdo</label> <span class="required">*</span><br>
                <textarea id="body" v-model="formData.body" cols="30" rows="15" maxlength="2000" class="form-control"></textarea>

                <span v-if="errors.body" class="required">{{ errors.body[0] }}</span>
            </p>

            <button type="submit" class="btn-primary mt-5">
                Salvar
            </button>

        </form>
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
            formData: {
                title: '',
                body: '',
                category_id: []
            },
            categories: [],
            isLoading: false,
            errors: {},
            success: false,
            csrfToken: document.querySelector('meta[name="csrf-token"]').getAttribute('content')
        }
    },

    methods: {

        // salvar post
        async store() {

            this.isLoading = true

            axios.post(this.urlBase + 'posts/store', this.formData, {
                headers: {
                    'X-CSRF-TOKEN': this.csrfToken
                }})
                .then(response =>{

                    if(response.status == 200) {
                        this.errors = {}
                        this.isLoading = false

                        this.resetFields()
                        this.success = true

                    }
                })
                .catch(error => {
                    this.isLoading = false

                    if (error.response && error.response.status === 422) {
                        this.errors = error.response.data.errors;
                    } else {
                        console.error(error)
                    }

                })
        },

        // listar todas categorias
        allCategories() {

            this.isLoading = true

            axios.get(this.urlBase + 'categories')
                .then(response => {

                    this.isLoading = false
                    this.categories = response.data

                })
                .catch(error => {
                    this.isLoading = false
                    console.error(error);
                })
        },

        resetFields(){
                this.formData.title = ''
                this.formData.body = ''
                this.formData.category_id = []
            },
        },

    mounted() {
        this.allCategories()
    }

}
</script>
