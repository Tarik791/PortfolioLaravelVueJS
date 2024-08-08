<template>
    <div class="dark:bg-slate-900 min-h-screen flex flex-col">
        <Header />
        <main class="flex-grow flex items-center justify-center px-4 py-6">
            <div class="bg-transparent shadow-xl rounded-lg p-8 max-w-4xl w-full">

                <!-- Slider za slike -->
                <div class="relative">
                    <!-- Glavna slika -->
                    <div class="mt-24">
                        <img :src="currentImage" :alt="project.name" class="w-full h-100 object-cover rounded-xl mx-auto"/>
                    </div>

                    <!-- Manje slike -->
                    <div class="flex space-x-4 mt-4 overflow-x-auto">
                        <div v-for="(image, index) in imageList" :key="index" class="cursor-pointer">
                            <img 
                                :src="`/storage/${image}`"
                                :alt="project.name"
                                class="w-32 h-24 object-cover rounded-md border border-gray-300"
                                @click="changeImage(image)"
                            />
                        </div>
                    </div>
                </div>
                <!-- Detalji projekta -->
                <div class="mt-8">
                    <div class="mb-4">
                        <strong class="text-gray-300">Title:</strong>
                        <h1 class="text-4xl font-bold mb-6 text-white">{{ project.name }}</h1>
                    
                    </div>
                    <div class="mb-4">
                        <strong class="text-gray-300">Project URL:</strong>
                        <p>
                            <a :href="project.project_url" class="text-blue-300 hover:underline">{{ project.project_url }}</a>
                        </p>
                    </div>

                    <div class="mb-4">
                        <strong class="text-gray-300">Created At:</strong>
                        <p>{{ project.created_at }}</p>
                    </div>

                    <div class="mb-4">
                        <strong class="text-gray-300">Updated At:</strong>
                        <p>{{ project.updated_at }}</p>
                    </div>
                </div>
            </div>
        </main>
        <Footer />
    </div>
</template>

<script setup>
import Header from '@/Components/Frontend/Header.vue';
import Footer from '@/Components/Frontend/Footer.vue';
import { ref } from 'vue';

const props = defineProps({
    project: Object,
});

// Lista slika koje će biti prikazane u slideru
const imageList = ref([
    props.project.image,
    props.project.image_2,
    props.project.image_3,
    props.project.image_4,
    props.project.image_5,
    props.project.image_6
].filter(image => image)); // Filtriramo da ne uključujemo `null` ili `undefined` slike

// Držite trenutnu sliku
const currentImage = ref(`/storage/${imageList.value[0]}`);

// Funkcija za promenu trenutne slike
const changeImage = (image) => {
    currentImage.value = `/storage/${image}`;
};
</script>

<style scoped>
/* Dodajte dodatne stilove po potrebi */
</style>
