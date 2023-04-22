<template>
  <div>
    <div>ユーザー情報</div>
    <router-link to="profile">プロフィール</router-link> |
    <router-link to="post">記事</router-link>
    <div class="green-b">
      <router-view />
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
.green-b {
  border: 1px green solid;
}
</style>
