<template>
    <div>
        <button id="cancel" @click="$emit('close')"><img id="cancelcross" src="../../assets/cancel.png"/></button>
        <div id="formProfil">
            <form methods="post">
                <label for="ancienmdp">Votre ancien mot de passe : </label>
                <input
                    type="text"
                    id="password"
                    name="password"
                    required
                />
                <br />
                <label for="nouveaumotdepasse1">Votre nouveau mot de passe :</label>
                <input
                    type="text"
                    id="newpassword1"
                    name="newpassword1"
                    required
                />
                <br />
                <label for="nouveaumotdepasse2">Répétez votre nouveau mot de passe :</label>
                <input
                    type="text"
                    id="newpassword2"
                    name="newpassword2"
                    required
                />
                <br/>
                <button id="cancel" @click="$emit('close')">Annuler</button>
                <button type="submit">
                    Valider
                </button>
            </form>
        </div>
    </div>
    
</template>

<script>
    export default {
        name: 'TheNouveauMdp',
        data() {
            return {
                message: 'The NouveauMdp'
            }
        }
    }
</script>

<style scoped>
    #logoutBtn{
        background-color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px;
        margin-top: 20px;
        cursor: pointer;
    }
    #cancelcross{
        width: 20px;
        height: 20px;
    }
</style>