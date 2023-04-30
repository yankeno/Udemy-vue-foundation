<template>
  <v-app>
    <header-global />
    <v-main>
      <v-container>
        <router-view :books="books" @add-book-list="addBook" />
      </v-container>
    </v-main>
    <footer-global />
  </v-app>
</template>

<script>
import FooterGlobal from "@/global/FooterGlobal.vue";
import HeaderGlobal from "@/global/HeaderGlobal.vue";

const STORAGE_KEY = "book";
export default {
  components: { HeaderGlobal, FooterGlobal },
  name: "App",

  data() {
    return {
      books: [],
      newBook: null,
    };
  },
  mounted() {
    if (localStorage.getItem("STORAGE_KEY")) {
      try {
        this.books = JSON.parse(localStorage.getItem("STORAGE_KEY"));
      } catch (e) {
        localStorage.removeItem("STORAGE_KEY");
      }
    }
  },
  methods: {
    addBook(e) {
      this.books.push({
        id: this.books.length,
        title: e.title,
        image: e.image,
        description: e.description,
        readDate: "",
        memo: "",
      });
      // this.newBook = "";
      this.saveBooks();
      this.goToEditPage(this.books.slice(-1)[0].id);
    },
    removeBook(x) {
      this.books.splice(x, 1);
      this.saveBook();
    },
    saveBooks() {
      const parsed = JSON.stringify(this.books);
      localStorage.setItem("STORAGE_KEY", parsed);
    },
    goToEditPage(id) {
      this.$router.push(`/edit/${id}`);
    },
  },
};
</script>
