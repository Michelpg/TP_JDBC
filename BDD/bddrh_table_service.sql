
-- --------------------------------------------------------

--
-- Structure de la table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `id` varchar(50) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`id`, `libelle`) VALUES
('A00', 'Direction générae'),
('B01', 'Approvisionnement'),
('C01', 'Comptabilité'),
('D01', 'Service après vente'),
('D11', 'Boulagerie'),
('E01', 'Epicerie'),
('E11', 'Produits frais'),
('E21', 'Electroménager'),
('E31', 'Animalerie et jardin'),
('F01', 'Informatique'),
('F02', 'Ressources humaines'),
('G01', 'Caisse');
