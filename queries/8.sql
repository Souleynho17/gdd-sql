SELECT prenom, nom  FROM dbuser.clients
join reservation on reservation.client_id = clients.client_id
where reservation_date > '2022-12-31';