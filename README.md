# devwave
## Description du projet

## Run le projet
1. Se déplacer dans le dossier laravel
2. Lancer la commande : npm install
3. Lancer la commande : composer require laravel/ui
5. Copier/coller .env.example et le renommer en .env
6. Lancer la commande : php artisan key:generate
7. npm install tailwindcss
8. npm install -S vue-router@next
9. composer create-project laravel/laravel laravel-chat
10. Dans le .env: changer BROADCAST_DRIVER en BROADCAST_DRIVER=pusher
11. Rajouter en bas du .env: 
PUSHER_APP_ID=1613596
PUSHER_APP_KEY=84fb51e2155b226d3025
PUSHER_APP_SECRET=cdc9f9d8bc4ff6d81422
PUSHER_APP_CLUSTER=eu

VITE_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
VITE_PUSHER_HOST="${PUSHER_HOST}"
VITE_PUSHER_PORT="${PUSHER_PORT}"
VITE_PUSHER_SCHEME="${PUSHER_SCHEME}"
VITE_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"

12. composer require pusher/pusher-php-server
13. npm install --save laravel-echo pusher-js
14. Ouvrir un terminal et lancer la commande php artisan serve pour lancer le backend
15. Ouvrir un deuxième terminal et lancer la commande npm run dev pour lancer le frontend
