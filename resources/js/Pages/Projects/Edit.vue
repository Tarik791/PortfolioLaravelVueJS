<template>
    <Head title="Edit Project" />

    <AuthenticatedLayout>
        <template #header>
            <h2 class="font-semibold text-xl text-gray-800 leading-tight">
                Edit Project
            </h2>
        </template>

        <div class="py-12">
            <div class="max-w-md mx-auto sm:px-6 lg:px-8 bg-white">
                <form class="p-4" @submit.prevent="submit">

                    <!-- Polje za selekciju veština -->
                    <div>
                        <InputLabel for="skill_select" value="Select a Skill" />
                        <select 
                            v-model="selectedSkill" 
                            id="skill_select" 
                            name="skill_select" 
                            class="mt-1 block w-full pl-3 pr-10 py-2 text-base border-gray-300 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm rounded-md" 
                        >
                            <option value="" disabled>Select a skill</option>
                            <option v-for="skill in skills" :key="skill.id" :value="skill.id">{{ skill.name }}</option>
                        </select>
                        <button type="button" @click="addSkill" class="mt-2 px-4 py-2 bg-indigo-500 hover:bg-indigo-700 text-white rounded-md">Add Skill</button>
                        <InputError class="mt-2" :message="form.errors.skill_ids" />
                    </div>

                    <!-- Prikaz odabranih veština -->
                    <div v-if="form.skill_ids.length > 0" class="mt-4">
                        <h3 class="font-semibold text-lg text-gray-800">Selected Skills:</h3>
                        <ul class="list-disc list-inside">
                            <li v-for="(skillId, index) in form.skill_ids" :key="index">
                                {{ getSkillName(skillId) }}
                                <button @click="removeSkill(index)" type="button" class="ml-2 text-red-500">Remove</button>
                            </li>
                        </ul>
                    </div>

                    <!-- Ostala polja -->
                    <div class="mt-4">
                        <InputLabel for="name" value="Name" />
                        <TextInput id="name" type="text" class="mt-1 block w-full" v-model="form.name" autofocus autocomplete="username" />
                        <InputError class="mt-2" :message="form.errors.name" />
                    </div>

                    <div class="mt-4">
                        <InputLabel for="project_url" value="URL" />
                        <TextInput id="project_url" type="text" class="mt-1 block w-full" v-model="form.project_url" autofocus autocomplete="project_url" />
                        <InputError class="mt-2" :message="form.errors.project_url" />
                    </div>

                    <div class="mt-4">
                        <InputLabel for="image" value="Image" />
                        <TextInput id="image" type="file" class="mt-1 block w-full" @input="form.image = $event.target.files[0]" />
                        <InputError class="mt-2" :message="form.errors.image" />
                    </div>

                    <div class="flex items-center justify-end mt-4">
                        <PrimaryButton class="ml-4" :class="{ 'opacity-25': form.processing }" :disabled="form.processing">
                            Update
                        </PrimaryButton>
                    </div>
                </form>
            </div>
        </div>
    </AuthenticatedLayout>
</template>

<script setup>
import { ref } from 'vue';
import AuthenticatedLayout from '@/Layouts/AuthenticatedLayout.vue';
import { Head, useForm } from '@inertiajs/inertia-vue3';
import InputError from '@/Components/InputError.vue';
import InputLabel from '@/Components/InputLabel.vue';
import PrimaryButton from '@/Components/PrimaryButton.vue';
import TextInput from '@/Components/TextInput.vue';
import { Inertia } from "@inertiajs/inertia";

const props = defineProps({
    skills: Array,
    project: Object
});

const form = useForm({
    name: props.project?.name || '',
    image: null,
    skill_ids: props.project?.skills ? props.project.skills.map(skill => skill.id) : [],
    project_url: props.project?.project_url || ''
});

const selectedSkill = ref('');

const addSkill = () => {
    if (selectedSkill.value && !form.skill_ids.includes(selectedSkill.value)) {
        form.skill_ids.push(selectedSkill.value);
        selectedSkill.value = '';  // Resetuje select polje
    }
};

const removeSkill = (index) => {
    form.skill_ids.splice(index, 1);
};

const getSkillName = (id) => {
    const skill = props.skills.find(skill => skill.id === id);
    return skill ? skill.name : '';
};

const submit = () => {
    Inertia.post(`/projects/${props.project.id}`, {
        _method: "put",
        name: form.name,
        image: form.image,
        skill_ids: form.skill_ids,
        project_url: form.project_url
    });
};
</script>
