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
                <h2 class="section-title">My Skills & Projects</h2>
                <p class="subtitle">Explore my diverse skills and projects. From backend technologies like PHP and Laravel to frontend frameworks such as ReactJS and Vue.js, I’ve worked with a wide range of languages and tools. Dive into my latest projects to see how I bring ideas to life with languages like JavaScript, Go, Python, and .NET, and discover the innovative solutions I've developed.</p>
            </div>
        </div>
        <Projects :skills="skills" :projects="projects" />
    </section>
</template>