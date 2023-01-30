Expication du projet.

La base de donnée est très importante pour un hotel.

Beaucoup d’hôteliers ont l’obsession de l’acquisition mais en négligent souvent la fidélisation.
Et pourtant, c’est un levier de rentabilité considérable pour les hôtels.
Pour fidéliser, l’outil indispensable est évidemment les coordonnées des clients.
Bon nombre d’hôteliers font l’erreur de ne pas récupérer systématiquement ces données, et c’est un tort considérable.

Tout d’abord, l’intérêt est d’apprendre à les connaître. Cela commence bien évidemment, par son identité, prénom + nom, mais pas seulement.

Le numéro de téléphone. L’indispensable, vous devez la récupérer pour chaque client, c’est obligatoire.
Il y a aussi le nombre de jours qu'il compte passer pour pouvoir nous adapter.
La date à laquelle le client à reservé pour connaitre la fréquence des clients chaque jour.

On a aussi besoin de stocker toute les informations concernant les employées nom, prénom, fonction.

Donc toute ses informations ont été très utiles pouir cencevoir la base de donnée.

Juste en dessous je vous explique à quoi sert les différentes requêtes :

1. Voir les prénom et nom des employées.

SELECT prenom, nom  FROM dbuser.employees;

2. voir les différents emplois des employées.

SELECT job_fonction  FROM dbuser.employees;

3. Faire la somme de tous les salaires des employées.

SELECT sum(salary) as total_salary FROM dbuser.employees;

4. Faire la moyenne de tous les salaires.

SELECT round(avg(salary)) as salary FROM dbuser.employees;

5. Selectionner le prénom et nom  des clients.

SELECT prenom, nom, numero_tel FROM dbuser.clients;

6. Selectionner les numéros de chambres du 1er étage.

SELECT chambre_numero FROM dbuser.chambres where etage > 1;

7. Selectionner les prénom et nom des clients ayant réserver avant 1er Janvier 2023.

SELECT prenom, nom  FROM dbuser.clients
join reservation on reservation.client_id = clients.client_id
where reservation_date < '2023-01-01';

8. Selectionner les prénom et nom des client ayant réserver après le 31 Décembre 2022.

SELECT prenom, nom  FROM dbuser.clients
join reservation on reservation.client_id = clients.client_id
where reservation_date > '2022-12-31';

9. Selectionner le nom et prénom des employées avec un salaire de plus de 1800 euros.

SELECT nom, prenom FROM dbuser.employees where salary > 1800;

10. Selectionner le prénom et nom des clients aynt réservé une chambre d'hotel pour moins de 3 jours.

SELECT prenom, nom  FROM dbuser.clients
join planning on planning.client_id = clients.client_id
where reservation_periode < 3;

11. Selectionner les numero de chambres qui sont en dessous du 2ème étage.

SELECT chambre_numero FROM dbuser.chambres where etage < 2;

12. Selectionner le prénom et nom des clients qui ont réserver le 31 Décembre.

SELECT prenom, nom  FROM dbuser.clients
join reservation on reservation.client_id = clients.client_id
where reservation_date = '2022-12-31';

13. Faire la moyenne des salaire annuel des employées.

SELECT round(avg(salary)*12, 2) as salary FROM dbuser.employees;

14. Faire la différence entre le plus grand et le plus petit salaire des employées.

SELECT max(salary) - min(salary) as diff_salary FROM dbuser.employees;

15. Selectionner les prénom et nom des employées en dehors de la fourchette 2000 - 5000.

select prenom, nom from dbuser.employees
where salary not between 2000 and 5000;
