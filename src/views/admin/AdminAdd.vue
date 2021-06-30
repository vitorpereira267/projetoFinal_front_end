<template>
  <div style="background: indianred; height: 1200px;">
    <div class="tags">
      <a href="http://localhost:8080/adminget">Get</a>
      <a href="http://localhost:8080/adminadd">Add</a>
      <a href="http://localhost:8080/admindelete">Delete</a>
      <a href="http://localhost:8080/adminupdate">Update</a>
    </div>
    <div class="box">
      <form method="post" @submit.prevent="submit">
        <div >
        <div class="insert-info">
          <h2>Game:</h2>
          <input
            class=""
            placeholder="Insert the game name..."
            type="game"
            required
            v-model="gameName"
          />
        </div>
        
        
        <div class="insert-info">
          <h2>Pegi:</h2>
          <input
            class="space"
            placeholder="Insert the pegi..."
            required
            v-model="pegi"
          />
        </div>
        <div class="insert-info">
          <h2>Price:</h2>
          <input
            class="space"
            placeholder="Insert the price..."
            type="preco"
            required
            v-model="preco"
          />
        </div>
        <div class="insert-info">
          <h2>Stock:</h2>
          <input
            class="space"
            placeholder="Insert the stock..."
            type="stock"
            required
            v-model="stock"
          />
        </div>
        <div class="insert-info">
          <h2>Description:</h2>
          <input
            class="space"
            placeholder="Insert the description..."
            type="description"
            required
            v-model="description"
          />
        </div>
        <div class="insert-info">
          <h2>Minimum Required:</h2>
          <input
            style="height: 130px"
            type="minimum_Requirement"
            class="space"
            placeholder="Insert the minimum requirement"
            required
            v-model="minimum_Requirement"
          />
        </div>
        <div class="insert-info">
          <h2>Recommended Requirement:</h2>
          <input
            style="height: 130px"
            type="recommended_Requirement"
            class="space"
            placeholder="Insert the recommended requirement..."
            required
            v-model="recommended_Requirement"
          />
        </div>
        <div class="insert-info">
          <h2>Release Date:</h2>
          <input
            type="date"
            class="space"
            required
            v-model="releaseDate"
          />
        </div>
        <div class="insert-info">
          <h2>Image:</h2>
          <input
            type="text"
            class="space"
            placeholder="url/name of the image"
            required
            v-model="image"
          />
        </div>
</div>
<div style="display: flex; justify-content: center;">
<input type="submit" value="Submit" />
</div>
        
      </form>
    </div>
  </div>
</template>
<script>
import axios from "axios";
export default {
  data() {
    return {
      gameName: "",
      pegi: "",
      preco: "",
      stock: "",
      description: "",
      minimum_Requirement: "",
      recommended_Requirement: "",
      releaseDate: "",
      image: "",
    };
  },
  methods: {
    submit() {
      axios
        .post("http://localhost:3000/api/game", {
          gameName: this.gameName,
          pegi: this.pegi,
          preco: this.preco,
          stock: this.stock,
          description: this.description,
          minimum_Requirement: this.minimum_Requirement,
          recommended_Requirement: this.recommended_Requirement,
          releaseDate: this.releaseDate,
          image: this.image,
          
        })
        .then((res) => {
          console.log(res);
          alert("Game added with success");
          this.$router.push("/adminadd");
        })
        .catch((res) => {
          alert("Error adding the game");
          
          console.log(res);
          this.$router.push("/adminadd");
        });
    },
  },
};
</script>

<style scoped>
input{
  width: 100%;
}
a {
  margin: 10px;
  text-decoration: none;
  color: black;
  font-size: 30px;
}
h2 {
  font-size: 18px;
  display: flex;
  width: 200px;
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
  margin: 30px 400px;
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