<script setup>
import Project from "./Project.vue";
import { ref } from "vue";

const props = defineProps({
    skills: Object,
    projects: Object,
});

const filteredProjects = ref(props.projects.data);
const selectedSkills = ref([]);

const filterProjects = (skillId) => {
    if (selectedSkills.value.includes(skillId)) {
        selectedSkills.value = selectedSkills.value.filter(id => id !== skillId);
    } else {
        selectedSkills.value.push(skillId);
    }

    if (selectedSkills.value.length === 0) {
        filteredProjects.value = props.projects.data;
    } else {
        filteredProjects.value = props.projects.data.filter(project => 
            project.skills.some(skill => selectedSkills.value.includes(skill.id))
        );
    }
};
</script>

<template>
    <div class="container mx-auto">
        <nav class="mb-12 border-b-2 border-light-tail-100 dark:text-dark-tail-100">
            <ul class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4 justify-evenly items-center">
                <li class="cursor-pointer capitalize m-4">
                    <button
                        @click="filterProjects(null)"
                        class="flex text-center px-4 py-2 hover:text-light-tail-500 dark:text-dark-tail-100"
                        :class="[
                            selectedSkills.length === 0
                                ? 'text-light-tail-500 dark:text-dark-secondary'
                                : ''
                        ]"
                    >
                        All
                    </button>
                </li>
                <li
                    class="cursor-pointer capitalize m-4"
                    v-for="skill in skills.data"
                    :key="skill.id"
                >
                    <button
                        @click="filterProjects(skill.id)"
                        class="flex text-center px-4 py-2 hover:text-light-tail-500 dark:text-dark-tail-100"
                        :class="[
                            selectedSkills.includes(skill.id)
                                ? 'text-light-tail-500 dark:text-dark-secondary'
                                : ''
                        ]"
                    >
                        {{ skill.name }}
                    </button>
                </li>
            </ul>
        </nav>
        <!-- Projekti -->
        <section class="grid gap-y-12 lg:grid-cols-3 lg:gap-8">
            <Project
                v-for="project in filteredProjects"
                :key="project.id"
                :project="project"
            />
        </section>
    </div>
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
