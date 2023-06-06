<template>
    <div>
        <input type="text" v-on="searchKey" placeholder="Search..." />
        <ul>
            <li v-for="item in filteredItems" :key="item.id">{{ item.title }}</li>
        </ul>
    </div>
</template>

<script>
export default {
    name: "BaseInput",
    props: {
        items: {
            type: Array,
            required: false,
            default: () => []
        },
        searchKey: {
            type: String,
            default: ''
        }
    },
    data() {
        return {
            filteredItems: []
        };
    },
    watch: {
        searchKey: {
            immediate: true,
            handler() {
                this.filterItems();
            }
        },
        items: {
            immediate: true,
            handler() {
                this.filterItems();
            }
        }
    },
    methods: {
        filterItems() {
            const regex = new RegExp(this.searchKey, 'i');
            this.filteredItems = this.items.filter(item => regex.test(item.title));
        }
    }
};
</script>

<style scoped>
/* Add any custom styles for the component here */
</style>
