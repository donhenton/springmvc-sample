 

  use test;

 SET foreign_key_checks=0;
    drop table application_groups;

    drop table applications;

    drop table group_assignments;

    drop table groups;

    drop table users;

    create table application_groups (
        id integer NOT NULL AUTO_INCREMENT,
        
        group_id integer not null,
        application_id integer not null,
        primary key (id)
    );

    create table applications (
        id integer NOT NULL AUTO_INCREMENT,
        
        application_name varchar(120),
        primary key (id)
    );

    create table group_assignments (
        id integer NOT NULL AUTO_INCREMENT,
        
        group_id integer not null,
        user_id varchar(20) not null,
        primary key (id)
    );

    create table groups (
        id integer NOT NULL AUTO_INCREMENT,
        
        group_name varchar(120),
        primary key (id)
    );

    create table users (
        UserID varchar(20) not null,
        
        username varchar(20),
        primary key (UserID)
    );

 
INSERT INTO applications (id, application_name) VALUES
(55, 'AcceptableBO'),
(23, 'APEXMenu'),
(34, 'ApparelSizeCategory'),
(20, 'AutoCurveForecast'),
(16, 'BrandParents'),
(17, 'Brands'),
(19, 'BusinessRuleMaintenance'),
(10, 'ColorParent'),
(1, 'ColorParentMatches'),
(2, 'Colors'),
(3, 'CoopPotential'),
(28, 'CostMasterMaintenance'),
(32, 'Departments'),
(33, 'Discounts'),
(4, 'Fabric'),
(5, 'FabricTexture'),
(12, 'HeelHeightRange'),
(11, 'HeelHeights'),
(25, 'HelpdeskInventory'),
(15, 'HeroColor'),
(35, 'ImageSeqs'),
(36, 'ImageSizes'),
(8, 'ItemColorActual'),
(37, 'Itemgender'),
(14, 'ItemLifestyle'),
(13, 'ItemSubstyles'),
(38, 'ItemXMatrixes'),
(39, 'ItemXParent'),
(40, 'ItemXParentMatches'),
(41, 'ItemXS'),
(42, 'ItemXSumSizes'),
(43, 'ItemYMatrixes'),
(44, 'ItemYParent'),
(53, 'ItemYParentMatches'),
(45, 'ItemYS'),
(46, 'ItemYSumSize'),
(31, 'ListControl-1.2.1'),
(6, 'MarkDownRules'),
(47, 'MatrixLayouts'),
(48, 'MatrixTypes'),
(9, 'OfferExclusions'),
(24, 'OrderTally'),
(27, 'PhotoMaster'),
(7, 'PrimaryUpper'),
(22, 'ProductionMenu'),
(29, 'PromotionalCostsMaintenance'),
(26, 'Run Control'),
(49, 'SalesVentures'),
(50, 'SourceCodeTypes'),
(51, 'StatusCodes'),
(54, 'SwatchSizes'),
(18, 'SylogsReports'),
(30, 'TestMasterUpdate'),
(52, 'TitleTypes'),
(56, 'UPC DATA'),
(21, 'UpdateNetOrigFrcst');


INSERT INTO groups (id, group_name) VALUES
(8, 'BrandEdit'),
(6, 'BrandUsers'),
(9, 'ExclusionsUsers'),
(5, 'HeroColor'),
(3, 'ItemUsers'),
(4, 'Merchandisers'),
(1, 'PowerBuilder'),
(7, 'PowerUsers'),
(2, 'UPC');

 


 
INSERT INTO users (UserID, username) VALUES
('alb', 'April Jones'),
('ale', 'Angie Smith'),
('alm', 'Andrea Thompson'),
('ayb', 'Alissa Alpha'),
('blz', 'Brenda Beta'),
('brw', 'Billy Gamma'),
('cad', 'Cyndy Delta'),
('chs', 'Christina Epsilson'),
('cjj', 'Carol Japell'),
('clh', 'Carrie Hurley-Marker'),
('cmb', 'Cathy Becker'),
('dcj', 'Dawn Powell'),
('dgk', 'Dave Buster'),
('djb', 'Dave Blandingsworth'),
('djl', 'Debra Lawson'),
('dra', 'Dan Alpaca'),
('dxj', 'Drew Jewison'),
('eas', 'Liz Samuels'),
('gas', 'Gen Spaeth'),
('gaw', 'George Wolefenstein'),
('jhm', 'Jane Maryson'),
('jms', 'Janie Bettysborth'),
('jpd', 'Joel Deign'),
('jrk', 'John Kip'),
('kag', 'Kim Brassworkth'),
('kjc', 'Kathy Constantine'),
('lmb', 'Lisa Blossom'),
('lmn', 'Lana Nebbish'),
('lmz', 'Luann Zap'),
('lsb', 'Lucille Betson'),
('lxz', 'Lynn Ziglier'),
('lyb', 'Logan Boson'),
('mab', 'Marietta Ballon'),
('mkm', 'Mary Mattson'),
('mnj', 'Michelle Johnson'),
('oper', 'Olga PE Robeson'),
('pmg', 'Paula Ganymede'),
('sgrana', 'Sara Grandstand'),
('slg', 'Sam Garfnarf'),
('smg', 'Sue Glendale'),
('srm', 'Shannon Missouri');


delete from application_groups;
INSERT INTO application_groups (application_id, group_id) VALUES
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(9, 2),
(56, 2),
(16, 3),
(17, 3),
(16, 4),
(17, 4),
(1, 5),
(15, 5),
(19, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(19, 6),
(10, 7),
(11, 7),
(12, 7),
(13, 7),
(14, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 7),
(37, 7),
(38, 7),
(39, 7),
(40, 7),
(41, 7),
(42, 7),
(43, 7),
(44, 7),
(45, 7),
(46, 7),
(47, 7),
(48, 7),
(49, 7),
(50, 7),
(51, 7),
(52, 7),
(53, 7),
(54, 7),
(55, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(19, 9);

INSERT INTO group_assignments (user_id, group_id) VALUES
( 'ale', 1),
( 'ayb', 1),
( 'blz', 1),
( 'cad', 1),
( 'clh', 1),
( 'djb', 1),
( 'djl', 1),
( 'dra', 1),
( 'eas', 1),
( 'jhm', 1),
( 'jms', 1),
( 'kjc', 1),
( 'lsb', 1),
( 'lxz', 1),
( 'lyb', 1),
( 'mab', 1),
( 'mkm', 1),
( 'oper', 1),
( 'sgrana', 1),
( 'slg', 1),
( 'jpd', 2),
( 'lmb', 2),
( 'lsb', 2),
( 'alb', 3),
( 'ale', 3),
( 'alm', 3),
( 'brw', 3),
( 'chs', 3),
( 'cjj', 3),
( 'cmb', 3),
( 'dcj', 3),
( 'dgk', 3),
( 'djb', 3),
( 'dxj', 3),
( 'gas', 3),
( 'gaw', 3),
( 'jpd', 3),
( 'jrk', 3),
( 'kag', 3),
( 'lmn', 3),
( 'lmz', 3),
( 'lyb', 3),
( 'mnj', 3),
( 'pmg', 3),
( 'slg', 3),
( 'smg', 3),
( 'srm', 3),
( 'alb', 4),
( 'brw', 4),
( 'cjj', 4),
( 'dxj', 4),
( 'jrk', 4),
( 'kag', 4),
( 'pmg', 4),
( 'alm', 5),
( 'cmb', 5),
( 'jpd', 5),
( 'lmn', 5),
( 'srm', 5),
( 'alb', 6),
( 'ale', 6),
( 'brw', 6),
( 'chs', 6),
( 'cjj', 6),
( 'dcj', 6),
( 'dgk', 6),
( 'djb', 6),
( 'dxj', 6),
( 'gas', 6),
( 'jpd', 6),
( 'jrk', 6),
( 'kag', 6),
( 'lmz', 6),
( 'lyb', 6),
( 'mnj', 6),
( 'pmg', 6),
( 'slg', 6),
( 'smg', 6),
( 'ale', 7),
( 'chs', 7),
( 'dcj', 7),
( 'dgk', 7),
( 'djb', 7),
( 'gas', 7),
( 'gaw', 7),
( 'jhm', 7),
( 'jms', 7),
( 'jpd', 7),
( 'lmz', 7),
( 'lyb', 7),
( 'slg', 7),
( 'smg', 7),
( 'ale', 8),
( 'chs', 8),
( 'dcj', 8),
( 'dgk', 8),
( 'djb', 8),
( 'gas', 8),
( 'jpd', 8),
( 'lmz', 8),
( 'lyb', 8),
( 'mnj', 8),
( 'slg', 8),
( 'smg', 8),
( 'ale', 9),
( 'alm', 9),
( 'cmb', 9),
( 'dcj', 9),
( 'dgk', 9),
( 'djb', 9),
( 'jpd', 9),
( 'lmn', 9),
( 'lyb', 9),
( 'slg', 9),
( 'smg', 9),
( 'srm', 9);


ALTER TABLE application_groups 
  ADD CONSTRAINT fk_application_groups_1
  FOREIGN KEY (`application_id` )
  REFERENCES applications (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_application_groups_1_idx` (`id` ASC) ;

ALTER TABLE application_groups 
  ADD CONSTRAINT fk_application_groups_2
  FOREIGN KEY (`group_id` )
  REFERENCES groups (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_application_groups_2_idx` (`id` ASC) ;


ALTER TABLE group_assignments 
  ADD CONSTRAINT fk_group_assignments_1
  FOREIGN KEY (`user_id` )
  REFERENCES users (`UserID` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_group_assignments_1_idx` (`id` ASC) ;
   
ALTER TABLE group_assignments 
  ADD CONSTRAINT fk_group_assignments_2
  FOREIGN KEY (`group_id` )
  REFERENCES groups (`id` )
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
, ADD INDEX `fk_group_assignments_2_idx` (`id` ASC) ;

   
ALTER TABLE applications auto_increment = 2000;
ALTER TABLE application_groups auto_increment = 2000;
ALTER TABLE groups auto_increment = 2000;
ALTER TABLE group_assignments auto_increment = 2000;

SET foreign_key_checks=1;