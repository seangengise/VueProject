import { ref, computed } from 'vue';
import { defineStore } from 'pinia';

const API_URL = 'https://api.escuelajs.co/api/v1/products'; // Replace with your real API

export const useProductStore = defineStore('product', () => {
  // State: List of products & loading state
  const products = ref([]);
  const loading = ref(false);
  const error = ref(null);

  // Getters: Computed properties
  const totalProducts = computed(() => products.value.length);

  // Actions: API Calls
  async function fetchProducts() {
    loading.value = true;
    error.value = null;
    try {
      const response = await axios.get(API_URL);
      products.value = response.data;
    } catch (err) {
      error.value = 'Failed to fetch products';
    } finally {
      loading.value = false;
    }
  }

  async function addProduct(product) {
    try {
      const response = await axios.post(API_URL, product);
      products.value.push(response.data);
    } catch (err) {
      error.value = 'Failed to add product';
    }
  }

  async function removeProduct(id) {
    try {
      await axios.delete(`${API_URL}/${id}`);
      products.value = products.value.filter(product => product.id !== id);
    } catch (err) {
      error.value = 'Failed to remove product';
    }
  }

  async function updateProduct(id, updatedProduct) {
    try {
      const response = await axios.put(`${API_URL}/${id}`, updatedProduct);
      const index = products.value.findIndex(product => product.id === id);
      if (index !== -1) {
        products.value[index] = response.data;
      }
    } catch (err) {
      error.value = 'Failed to update product';
    }
  }

  return {
    products,
    loading,
    error,
    totalProducts,
    fetchProducts,
    addProduct,
    removeProduct,
    updateProduct,
  };
});
