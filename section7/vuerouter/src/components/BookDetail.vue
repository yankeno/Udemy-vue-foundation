<template>
  <div>
    <p>本の詳細</p>
    <p>タイトル：{{ books[bookIndex].title }}</p>
    <p>本の内容：{{ books[bookIndex].content }}{{ id }}</p>
  </div>
</template>

<script>
export default {
  props: {
    id: Number,
    title: String,
    content: String,
  },
  data() {
    return {
      bookIndex: this.$route.params.id - 1,
      books: [
        { id: 1, title: "タイトル1", content: "本の内容" },
        { id: 2, title: "タイトル2", content: "本の内容" },
        { id: 3, title: "タイトル3", content: "本の内容" },
      ],
    };
  },
  created() {
    if (this.$route.params.id > this.books.length) {
      console.log(this.$route.params.id);
      this.$router.push("/book");
    }
  },
};
</script>

<style></style>
