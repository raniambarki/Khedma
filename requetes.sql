--Fonctions de ligne

--Sélectionner tous les noms des candidats en majuscules :
SELECT UPPER(Nom) FROM Condidat;
--Sélectionner tous les emails des candidats en minuscules :
SELECT LOWER(Adresse_email) FROM Condidat;
--Sélectionner le salaire minimum proposé dans les offres acceptées :
SELECT MIN(Salaire) FROM Offreaccépté;
--Calculer le salaire moyen proposé dans les offres acceptées :
SELECT AVG(Salaire) FROM Offreaccépté;
--Sélectionner toutes les offres demploi créées avant le 1er janvier 2023 :
SELECT * FROM Offreemploi WHERE Date_creation < DATE('2023-01-01', 'YYYY-MM-DD');
--Calculer le nombre dentretiens prévus pour le mois de mai 2023
SELECT COUNT(*) FROM Entretien WHERE Date_entretien LIKE '2023-05%';



--Fonctions de groupe

--Calculer le nombre d'offres d'emploi créées chaque mois 
SELECT Date_creation, COUNT(*) FROM Offreemploi GROUP BY Date_creation;

--Regroupement
--Sélectionner le nombre de références pour chaque candidat*/
SELECT Id_condidat, COUNT(*) FROM Reference GROUP BY Id_condidat;

--Jointure
--Sélectionner les noms des candidats ayant passé un entretien pour une offre d'emploi dont le titre contient le mot 'Développeur'
SELECT c.Nom FROM Condidat c 
JOIN Entretien e ON c.Id_condidat = e.Id_condidat 
JOIN Offreemploi o ON e.Id_offre = o.Id_offre 
WHERE o.Titre_offre LIKE '%Développeur%';

--Sous-requête simple
--Sélectionner les candidats ayant postulé à une offre d'emploi dont la date limite de candidature est passée
SELECT * FROM Condidat WHERE Id_condidat IN 
(SELECT Id_condidat FROM Offreaccépté WHERE Id_offre IN 
(SELECT Id_offre FROM Poste WHERE date_limite_condiature < DATE('now')));



--Sous-requête corrélée
--Sélectionner les candidats ayant au moins une référence dont le numéro de téléphone contient le chiffre 5
SELECT * FROM Condidat c WHERE EXISTS 
(SELECT 1 FROM Reference r WHERE r.Id_condidat = c.Id_condidat AND INSTR(char(Numtel_ref), '5') > 0);

--Retourner les informations des candidats ayant postulé pour un poste qui ont passé un entretien
SELECT *
FROM Condidat c
WHERE EXISTS (
    SELECT 1
    FROM Entretien e
    JOIN Offreemploi o ON e.Id_offre = o.Id_offre
    WHERE e.Id_condidat = c.Id_condidat
);

--Retourner les informations des candidats n'ayant pas encore postulé pour un poste 
SELECT *
FROM Condidat c
WHERE NOT EXISTS (
    SELECT 1
    FROM Offreemploi o
    WHERE o.Statut_offre = 'ouvert'
    AND NOT EXISTS (
        SELECT 1
        FROM Offreaccépté oa
        WHERE oa.Id_condidat = c.Id_condidat
        AND oa.Id_offre = o.Id_offre
    )
);

--Retourner les candidats ayant postulé pour un poste mais n'ayant pas été acceptés
SELECT *
FROM Condidat
WHERE Id_condidat IN (
    SELECT Id_condidat
    FROM Offreemploi o
    JOIN Offreaccépté oa ON o.Id_offre = oa.Id_offre
    WHERE o.Statut_offre = 'fermé'
    EXCEPT
    SELECT Id_condidat
    FROM Offreemploi o
    JOIN Offreaccépté oa ON o.Id_offre = oa.Id_offre
    WHERE o.Statut_offre = 'fermé'
    AND oa.Salaire > 50000
);






