SELECT prenom, nom  FROM dbuser.clients
join planning on planning.client_id = clients.client_id
where reservation_periode < 3;