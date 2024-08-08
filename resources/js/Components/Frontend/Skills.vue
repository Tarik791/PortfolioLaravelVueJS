<script setup>
    defineProps({
        skills: Object
    });
</script>

<template>
    <section class="bg-light-tail-100 dark:bg-dark-navy-500 py-16">
        <div class="container mx-auto">
            <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
                <div class="flex items-center justify-center" v-for="skill in skills.data" :key="skill.id">
                    <img :src="skill.image" :alt="skill.name" class="lg:h-20" />
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped>
.container {
    max-width: 1280px;
    margin: 0 auto;
}

.grid {
    display: grid;
    gap: 1rem; /* Razmak između slika */
}

@media (min-width: 640px) {
    .grid-cols-1 {
        grid-template-columns: repeat(2, minmax(0, 1fr));
    }
}

@media (min-width: 768px) {
    .grid-cols-1 {
        grid-template-columns: repeat(3, minmax(0, 1fr));
    }
}

@media (min-width: 1024px) {
    .grid-cols-1 {
        grid-template-columns: repeat(6, minmax(0, 1fr));
    }
}
</style>