
-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `id` int(50) NOT NULL,
  `dateDébut` date DEFAULT NULL,
  `datefin` date DEFAULT NULL,
  `idSal` varchar(50) NOT NULL,
  `idPoste` int(50) NOT NULL,
  `idService` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idSal` (`idSal`),
  KEY `idPoste` (`idPoste`),
  KEY `idService` (`idService`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contrat`
--

INSERT INTO `contrat` (`id`, `dateDébut`, `datefin`, `idSal`, `idPoste`, `idService`) VALUES
(1977102, '1977-03-15', '1985-03-01', '148A12', 1, 'B01'),
(1985076, '1985-03-01', '2002-09-15', '148A12', 3, 'F01'),
(2000098, '2000-09-01', '2010-10-10', '148A12', 4, 'G01'),
(2002181, '2002-09-15', NULL, '148A12', 3, 'F01'),
(2008045, '2008-05-05', '2008-10-17', '196A12', 1, 'E21'),
(2008111, '2008-10-17', NULL, '196A12', 6, 'F01'),
(2010065, '2010-10-10', NULL, '156A12', 5, 'G01');
