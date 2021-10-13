
-- --------------------------------------------------------

--
-- Structure de la table `poste`
--

DROP TABLE IF EXISTS `poste`;
CREATE TABLE IF NOT EXISTS `poste` (
  `id` int(50) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `caracteristique` varchar(50) NOT NULL,
  `indice` int(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `poste`
--

INSERT INTO `poste` (`id`, `libelle`, `caracteristique`, `indice`) VALUES
(1, 'Magasinier(e)', 'Magasinier(e) en réserve', 385),
(2, 'Responsable informatique', 'Gestion équipe de 2 et 3 personne ', 455),
(3, 'Informaticien(ne)', 'Maintenance technique ', 395),
(4, 'Hote(sse) de caisse ', 'Rotation horaire et week-end ', 365),
(5, 'Chargé(e) d\'equipe', 'Manage une équipe de 10 hote(sse)s de caisse', 430),
(6, 'Commercial(e)', 'Poste en rayon', 400);
