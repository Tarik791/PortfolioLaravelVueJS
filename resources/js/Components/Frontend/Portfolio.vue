<script setup>
import Projects from './Projects.vue';
defineProps({
    skills: Object,
    projects: Object
});
</script>

<template>
    <section id="portfolio" class="section bg-light-primary dark:bg-dark-primary min-h-[1400px]">
        <div class="container mx-auto">
            <div class="flex flex-col items-center text-center">
                <h2 class="section-title">My latest world</h2>
                <p class="subtitle">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Inventore velit eveniet ab corporis accusantium sequi! Aliquid sint laboriosam sequi voluptas ipsam doloremque repudiandae vitae, perspiciatis exercitationem soluta fugit, sunt magnam?</p>
            </div>
        </div>
        <Projects :skills="skills" :projects="projects" />
    </section>
</template>