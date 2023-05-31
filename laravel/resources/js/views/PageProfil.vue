<template>
    <div id="profil">
        <div id="pageTitle">
            <h1>Mon profil</h1>
            <button id="settingsBtn"><img src="../../assets/engrenage.png" /></button>
        </div>
        <div id="avatar">
            <img src="../../assets/avatar.jpg" />
        </div>
        <div id="formProfil">
            <form>
                <label for="pseudo">Pseudo</label>
                <input
                    type="text"
                    id="pseudo"
                    name="pseudo"
                    placeholder="Tartempion12"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button>
                <br />
                <label for="email">Email</label>
                <input
                    type="email"
                    id="email"
                    name="email"
                    placeholder="tart12@gmail.com"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button>
                <br />
                <label for="nom">Nom</label>
                <input
                    type="text"
                    id="nom"
                    name="nom"
                    placeholder="Tarte"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button>
                <br />
                <label for="prenom">Prénom</label>
                <input
                    type="text"
                    id="prenom"
                    name="prenom"
                    placeholder="Pion"
                    required
                />
                <button type="submit">
                    <img src="../../assets/modifier.png" />
                </button>
                <br />
            </form>
        </div>
    </div>
</template>

<script>
export default {
    name: "PageProfil",
};
</script>

<style>
#formProfil img{
    width: 20px;
    height: 20px;
}

#avatar img{
    width: 200px;
    height: 200px;
    background-color: #fff;
    margin: auto;
    margin-top: 20px;
    margin-bottom: 20px;

}
#settingsBtn{
    float: right;
    margin-right: 20px;
    margin-top: 20px;
    background-color: #fff;
    border: none;
    border-radius: 50%;
    width: 30px;
    height: 30px;
    cursor: pointer;
}

</style>
