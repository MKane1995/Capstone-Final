 <template>
  <div class="home">
    <navigation v-bind:event="false" />
    <restaurant-list v-bind:event="false" />
  </div>
</template>

<script>

import Navigation from "../components/Navigation.vue"
import RestaurantList from "../components/RestaurantList.vue"

export default {
  name: "home",
  components: {
    Navigation,
    RestaurantList
  }
};

</script>
<style scoped>
h1{
  text-decoration: underline;
  text-align: center;
}
</style>
