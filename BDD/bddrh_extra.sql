
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contrat`
--
ALTER TABLE `contrat`
  ADD CONSTRAINT `contrat_ibfk_1` FOREIGN KEY (`idSal`) REFERENCES `salarie` (`id`),
  ADD CONSTRAINT `contrat_ibfk_2` FOREIGN KEY (`idPoste`) REFERENCES `poste` (`id`),
  ADD CONSTRAINT `contrat_ibfk_3` FOREIGN KEY (`idService`) REFERENCES `service` (`id`);
