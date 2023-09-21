create table Condidat ( 
    Id_condidat number not null constraint condidat_pk primary key, 
    Nom varchar2(30) not null, 
    Adresse_email varchar2(50) not null, 
    Adresse_postale varchar2(40), 
    Num_telephone number not null, 
    Cv varchar2(4000) not null, 
    Lettre_de_motivation varchar2(4000), 
    Statut_du_condidat varchar2(10) 
);

create table Offreemploi ( 
    Id_offre number not null constraint offreemploi_pk primary key, 
    Titre_offre varchar2(30) not null, 
    Description_offre varchar2(4000) not null, 
    Date_creation date not null, 
    Date_limite date not null, 
    Statut_offre varchar2(10) not null 
);

create table Offreaccépté ( 
    Id_offreaccepté number not null constraint offreaccépté_pk primary key, 
    Id_offre number not null, 
    Id_condidat number not null, 
    Date_acceptation date not null, 
    Salaire number not null, 
    Avantages varchar2(4000),
    foreign key (Id_condidat) references Condidat (Id_condidat),
    foreign key (Id_offre) references offreemploi (Id_offre)
);

create table Entretien ( 
    Id_entretien number not null constraint entretien_pk primary key, 
    Id_offre number not null, 
    Id_condidat number not null, 
    Date_entretien date not null, 
    Lieu_entretien varchar2(30) not null, 
    Nom_recruteur varchar2(30), 
    Statut_entretien varchar2(30) not null ,
    foreign key (Id_offre) references Offreemploi(Id_offre),
    foreign key (Id_condidat) references Condidat(Id_condidat)
);

create table Poste ( 
    Id_poste number not null constraint poste_pk primary key, 
    Titre varchar2(30) not null, 
    Description_poste varchar2(4000) not null, 
    Date_creation_poste date not null, 
    Date_limite_condiature date not null, 
    Statut_poste varchar2(10) not null, 
    Exigence_poste varchar2(4000) not null 
);

create table Evaluation ( 
    Id_eva number not null constraint evaluation_pk primary key, 
    Id_entretien number not null, 
    Id_condidat number not null, 
    Notes number, 
    Commnetaires varchar2(4000), 
    Evaluation_Globale varchar2(4000),
    foreign key (Id_entretien) references Entretien (Id_entretien),
    foreign key (Id_condidat) references Condidat (Id_condidat)
);

create table Reference ( 
    Id_reference number not null constraint reference_pk primary key, 
    Id_condidat number not null, 
    Nom_ref varchar2(30) not null, 
    mail_ref varchar2(50) not null, 
    Numtel_ref number not null, 
    Relation_ref_condid varchar2(10) not null,
    foreign key (Id_condidat) references Condidat (Id_condidat)
);
