<script setup>
import { ref, onMounted, watch, computed, defineProps } from "vue";

// Correctly define props
const props = defineProps({
  emoji: { type: String, default: "💩" }
});

// Lifecycle Hook
onMounted(() => {
  console.log("Counter component has been mounted!");
});

// Reactive State
const counter = ref(0);

// Method to Increment Counter
const increment = () => counter.value++;

// Watch for Counter Changes
watch(counter, (current) => {
  if (current === 5) console.log("You have clicked five times!");
});

// Computed Property for Emojis Array
const arrayOfEmojis = computed(() => 
  Array.from({ length: counter.value }, () => props.emoji).join("")
);
</script>
<template>
  <div>
    <button @click="increment">Counter</button>
    <div>{{ counter }}</div>
    <div>{{ arrayOfEmojis }}</div>
  </div>
  <div>
    <p id="you"></p>
  </div>
</template>

