 CREATE TABLE IF NOT EXISTS `tblTypes` (  
  `pmkTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `fldTypeTitle` varchar(100) NOT NULL,
  PRIMARY KEY (`pmkTypeID`)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

 CREATE TABLE IF NOT EXISTS `tblLocations` (  
  `pmkLocationID` int(11) NOT NULL AUTO_INCREMENT,
  `fldLocationTitle` varchar(100) NOT NULL,
  PRIMARY KEY (`pmkLocationID`)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

  CREATE TABLE IF NOT EXISTS `tblObjects` (  
  `pmkObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `fldObjectUse` varchar(100) NOT NULL,
  `fldObjectNotes` varchar(1500),
  `fldDateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fnkTypeID` int not null references tblTypes(pmkTypeID),
  `fnkLocationID` int not null references tblLocations(pmkLocationID),
  PRIMARY KEY (`pmkObjectID`)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

  ###############################################################################################################
  #
  #		Second Set
  #
  ###############################################################################################################

   CREATE TABLE IF NOT EXISTS `tblTypes2` (  
  `pmkTypeID` int(11) NOT NULL AUTO_INCREMENT,
  `fldTypeTitle` varchar(100) NOT NULL,
  PRIMARY KEY (`pmkTypeID`)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;# MySQL returned an empty result set (i.e. zero rows).


 CREATE TABLE IF NOT EXISTS `tblLocations2` (  
  `pmkLocationID` int(11) NOT NULL AUTO_INCREMENT,
  `fldLocationTitle` varchar(100) NOT NULL,
  PRIMARY KEY (`pmkLocationID`)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;# MySQL returned an empty result set (i.e. zero rows).


  CREATE TABLE IF NOT EXISTS `tblObjects2` (  
  `pmkObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `fldObjectUse` varchar(100) NOT NULL,
  `fldObjectNotes` varchar(1500),
  `fldDateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fnkTypeID` int not null references tblTypes(pmkTypeID),
  `fnkLocationID` int not null references tblLocations(pmkLocationID),
  PRIMARY KEY (`pmkObjectID`)
  ) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;# MySQL returned an empty result set (i.e. zero rows).
