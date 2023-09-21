insert into Condidat (Id_condidat, Nom, Adresse_email, Adresse_postale, Num_telephone, Cv, Lettre_de_motivation, Statut_du_condidat)
values
(1, 'Lotfi lhaj', 'lotfi.lhaj@email.com', '1 rue des Lilas, 75010 Paris', '23456789', 'Mon CV', 'Ma lettre de motivation', 'En recherche active'),
(2, 'Mariem Marsi', 'mariem.marsi@email.com', '2 avenue de la République, 93100 Montreuil', '27654321', 'Mon CV', null, 'En recherche passive'),
(3, 'Layla Dbira', 'layla.dbira@email.com', '3 rue du Château, 69002 Lyon', '54321098', 'Mon CV', null, 'En poste'),
(4, 'ahmed dridi', 'ahmed.dridi@email.com', '4 impasse des Roses, 31000 Toulouse', '23456780', 'Mon CV', null, 'En recherche active'),
(5, 'sabra gesmi', 'sabra.gesmi@email.com', '5 place de la Victoire, 44000 Nantes', '58901234', 'Mon CV', 'Ma lettre de motivation', 'En poste');


INSERT INTO Offreemploi (Id_offre, Titre_offre, Description_offre, Date_creation, Date_limite, Statut_offre)
VALUES
(1, 'Développeur Java', 'Nous recherchons un développeur Java pour rejoindre notre équipe.', date('2023-04-14'), date('2023-05-14'), 'Ouvert'),
(2, 'Chef de projet IT', 'Nous recherchons un chef de projet IT pour gérer notre projet en cours.', date('2023-04-14'), date('2023-05-31'), 'Ouvert'),
(3, 'Consultant fonctionnel', 'Nous recherchons un consultant fonctionnel pour accompagner nos clients dans leur transformation digitale.', date('2023-04-14'), date('2023-05-21'), 'Ouvert'),
(4, 'Data analyst', 'Nous recherchons un data analyst pour analyser nos données et proposer des solutions d''optimisation.', date('2023-04-14'), date('2023-05-28'), 'Ouvert'),
(5, 'Développeur front-end', 'Nous recherchons un développeur front-end pour travailler sur notre application web.', date('2023-04-14'), date('2023-05-17'), 'Ouvert');


INSERT INTO Offreaccépté (Id_offreaccepté, Id_offre, Id_condidat, Date_acceptation, Salaire, Avantages) VALUES 
(1, 1, 1, date('2023-03-01'), 2500, 'Assurance santé'), 
(2, 3, 2, date('2023-03-15'), 3000, 'Bonus annuel'), 
(3, 2, 3, date('2023-03-12'), 2800, 'Jours de congé supplémentaires'), 
(4, 1, 4, date('2023-03-20'), 2700, 'Carte de crédit entreprise'), 
(5, 4, 5, date('2023-03-10'), 3200, 'Formation continue');


INSERT INTO Entretien (Id_entretien, Id_offre, Id_condidat, Date_entretien, Lieu_entretien, Nom_recruteur, Statut_entretien)
VALUES
(1, 2, 1, '2023-03-15 14:30:00', 'Paris', 'Julien Martin', 'Planifié'),
(2, 3, 4, '2023-03-20 10:00:00', 'Lyon', 'Sabra Dubois', 'Planifié'),
(3, 1, 5, '2023-03-16 11:30:00', 'Nantes', 'Jean Dupont', 'Planifié'),
(4, 5, 2, '2023-03-18 15:00:00', 'Montreuil', 'Ahmed Dridi', 'Planifié'),
(5, 4, 3, '2023-03-22 09:00:00', 'Toulouse', 'Dabour Dubois', 'Planifié');



INSERT INTO Poste (Id_poste, Titre, Description_poste, Date_creation_poste, Date_limite_condiature, Statut_poste, Exigence_poste)
values
(1, 'Développeur web', 'Nous recherchons un développeur web pour travailler sur des projets de sites web pour nos clients.', DATE('2023-01-01'), DATE('2023-02-01'), 'Ouvert', 'Connaissances en HTML, CSS, JavaScript et expérience en développement de sites web.'),
(2, 'Responsable marketing', 'Nous recherchons un responsable marketing pour gérer la stratégie marketing de notre entreprise.', DATE('2023-02-01'), DATE('2023-03-01'), 'Ouvert', 'Expérience en marketing et connaissance des outils de marketing numérique.'),
(3, 'Analyste financier', 'Nous recherchons un analyste financier pour aider notre entreprise à prendre des décisions financières éclairées.', DATE('2022-03-01'), DATE('2023-04-01'), 'Ouvert', 'Expérience en analyse financière et maîtrise des outils de modélisation financière.'),
(4, 'Designer graphique', 'Nous recherchons un designer graphique pour travailler sur des projets de design pour nos clients.', DATE('2023-02-01'), DATE('2023-04-01'), 'Ouvert', 'Expérience en design graphique et maîtrise des outils de design graphique.'),
(5, 'Assistant administratif', 'Nous recherchons un assistant administratif pour aider notre entreprise à gérer ses tâches administratives.', DATE('2023-02-01'), DATE('2023-06-01'), 'Ouvert', 'Expérience en administration et maîtrise des outils de bureautique.');


INSERT INTO Evaluation (Id_eva, Id_entretien, Id_condidat, Notes, Commnetaires, Evaluation_Globale) 
VALUES 
(1, 1, 1, 8, 'Bonnes compétences techniques', 'Excellent candidat pour le poste'),
(2, 2, 2, 6, "Manque d'expérience professionnelle", 'Candidat moyen pour le poste'),
(3, 3, 3, 9, 'Excellentes compétences de communication', 'Excellent candidat pour le poste'),
(4, 4, 4, 7, 'Compétences techniques moyennes', 'Candidat moyen pour le poste'),
(5, 5, 5, 9, "Excellent travail d'équipe", 'Excellent candidat pour le poste');

INSERT INTO Reference (Id_reference, Id_condidat, Nom_ref, mail_ref, Numtel_ref, Relation_ref_condid)
VALUES (1, 1, 'Jamel', 'jamel.dhaw@alpha.com', 23456789, 'Manager');

INSERT INTO Reference (Id_reference, Id_condidat, Nom_ref, mail_ref, Numtel_ref, Relation_ref_condid)
VALUES (2, 1, 'juini aymer', 'aymen.juini@alpha.com', 98765432, 'Colleague');

INSERT INTO Reference (Id_reference, Id_condidat, Nom_ref, mail_ref, Numtel_ref, Relation_ref_condid)
VALUES (3, 2, 'Boubaker kaddri', 'boubaker.kaddri@alpha.com', 55555555, 'Professor');

INSERT INTO Reference (Id_reference, Id_condidat, Nom_ref, mail_ref, Numtel_ref, Relation_ref_condid)
VALUES (4, 3, 'Youssedf baaziz', 'youssef.baaziz@alpha.com', 92556633, 'Supervisor');

INSERT INTO Reference (Id_reference, Id_condidat, Nom_ref, mail_ref, Numtel_ref, Relation_ref_condid)
VALUES (5, 4, 'Malek', 'malek.layth@alpha.com', 22222222, 'Coach');




