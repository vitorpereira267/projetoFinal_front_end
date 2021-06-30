<template>
  <div style="background: indianred; height: 860px">
    <div class="tags">
      <a href="http://localhost:8080/adminget">Get</a>
      <a href="http://localhost:8080/adminadd">Add</a>
      <a href="http://localhost:8080/admindelete">Delete</a>
      <a href="http://localhost:8080/adminupdate">Update</a>
    </div>
    <div class="box">
      <form method="post" @submit.prevent="submit">
        <div class="insert-info">
          <h2>Insert ID:</h2>
          <input
            class="space"
            style="margin: 0 30px"
            type="game_ID"
            required
            v-model="game_ID"
          />
        </div>

        <input type="submit" value="Delete" />
      </form>
    </div>
  </div>
</template>
<script>
import axios from "axios";
export default {
  data() {
    return {
      game_ID: "",
    };
  },

  methods: {
    submit() {
      axios
        .delete("http://localhost:3000/api/game/" + this.game_ID)
        .then((res) => {
          console.log(res);
          alert("Game deleted with success");
          
        })
        .catch((res) => {
          alert("Failed deleting a game!");
          console.log(res);
        });
    },
  },
};
</script>

<style scoped>
a {
  margin: 10px;
  text-decoration: none;
  color: black;
  font-size: 30px;
}
h2 {
  font-size: 23px;
}
.tags {
  height: 100px;
  display: flex;
  padding: 0 330px;
  justify-content: center;
  align-items: center;
}
.box {
  padding: 50px;
  display: flex;
  flex-direction: column;
  background-color: lightgray;
  margin: 30px 700px;
  border-radius: 8px;
  box-shadow: rgba(0, 0, 0, 0.25) 0px 14px 28px,
    rgba(0, 0, 0, 0.22) 0px 10px 10px;
  background: linear-gradient(#e66465, #9198e5);
  color: #190202;
}
.insert-info {
  display: flex;
  padding: 10px;
}

input[type="submit"] {
  width: 320px;
  height: 50px;
  border: 1px solid;
  background: #2691d9;
  border-radius: 25px;
  font-size: 18px;
  color: #e9f4fb;
  font-weight: 700;
  cursor: pointer;
  outline: none;
  margin: 50px;
}
</style>