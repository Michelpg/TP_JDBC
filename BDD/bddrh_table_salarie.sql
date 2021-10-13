
-- --------------------------------------------------------

--
-- Structure de la table `salarie`
--

DROP TABLE IF EXISTS `salarie`;
CREATE TABLE IF NOT EXISTS `salarie` (
  `id` varchar(50) NOT NULL,
  `numSecu` text NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dateNaiss` date NOT NULL,
  `dateEnbauche` date NOT NULL,
  `tel` varchar(50) NOT NULL,
  `mel` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salarie`
--

INSERT INTO `salarie` (`id`, `numSecu`, `nom`, `prenom`, `dateNaiss`, `dateEnbauche`, `tel`, `mel`) VALUES
('148A12', '1520814168026', 'MARTIN', 'Pierre', '1952-08-05', '1977-03-15', '038312XXXX', 'pierre.martin@proxim.fr'),
('156A12', '2671154395023', 'ESTEIN', 'Solène', '1967-11-18', '2000-09-01', '03834XXXX', 'solene.esten@proxim.fr'),
('196A12', '2671154395023', 'BENARBIA', 'Samira', '1982-03-28', '2008-05-05', '066748XXXX', 'smaira.benarbia@proxmix.fr');
