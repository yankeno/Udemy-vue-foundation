<template>
  <div id="app">
    <nav>
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
    </nav>
    <router-view />
    <button @click="setLogin">ログイン名表示</button>
    {{ $store.state.count }}
    <ul>
      <li v-for="user in visibleUsers" :key="user.id">
        {{ user.id }} : {{ user.name }} : {{ user.isVisible }}
      </li>
    </ul>
    <br />
    {{ getUserById }}
  </div>
</template>

<script>
import { mapActions } from "vuex";

export default {
  computed: {
    visibleUsers() {
      return this.$store.getters.visibleUsers;
    },
    getUserById() {
      return this.$store.getters.getUserById(2);
    },
  },
  methods: {
    ...mapActions("auth", ["setLoginUser"]),
    setLogin() {
      this.setLoginUser({ name: "大谷" });
    },
  },
};
</script>

<style></style>
