-- districts within the blast zone
select st_asewkt(geom) as districts_within_blast_diameter
from lab.districts
where st_within(lab.districts.geom,
                'SRID=3857;POLYGON((-191118.17242042557 621652.4538701903,-199101.92254988957 623879.3387958482,-220494.8719377939 635716.68955287,-221950.88605383062 636760.7454686048,-240554.54984801554 653837.5271344304,-254542.9330515406 674862.2248488013,-255216.3395802076 676199.3772338119,-264885.2274150037 705440.3110336106,-265140.0298853101 706905.7198728983,-266166.89282114385 735382.8100427352,-266000.99394713045 737035.1077898624,-264108.4458936043 748948.4660998276,-263699.58177342254 750820.6220378679,-252999.5662026307 779237.4778722662,-252623.7609967047 779916.9307157444,-243540.92021325894 793666.8648507552,-242544.46055259678 794944.6449351558,-230451.65494614816 807999.4002620823,-216328.00105989474 818824.6016450864,-215572.69373720096 819307.7841537271,-194011.3615419908 829845.2424900266,-170620.55934353214 835211.754088266,-169305.59659498718 835358.3126413332,-159767.3506369016 835983.6082145763,-158848.24172615388 836001.9280607284,-142450.3184085808 835043.7093895751,-126402.48644209199 831539.8313485903,-125128.47409056046 831155.1158401447,-110057.41781727126 825303.9429342723,-108086.8576970911 824358.3920142337,-92131.15893783516 814883.4156489098,-78092.63044916138 802747.5507068355,-77294.09770739752 801923.1831640922,-64431.10253326295 785713.2361970431,-60159.88982569306 777374.680010484,-55892.34797492894 769841.459298391,-55073.938559232934 767445.5349874985,-54997.0278201473 767295.3845353614,-54872.732381694615 766856.4963437339,-51116.64877735616 755860.4204814764,-50104.79170707648 753254.20523574,-49975.81987273061 752520.6010039148,-49579.582242380624 751360.6004549982,-48713.06456105364 745337.9270107574,-46541.508323515314 732985.9057063833,-46999.96325010543 712411.8741772063,-51462.54595633369 692322.4164972848,-52170.64657135942 690162.0914865402,-60935.732088423654 670503.7380998341,-73525.19135832688 653045.6999142442,-76320.7809065458 650489.5801312075,-76970.20265782835 649772.8371819607,-90704.41749940865 637092.8996012679,-106469.36694675137 627049.2029069387,-123765.42082300514 619960.0566484197,-142044.42447116415 616050.1333760857,-142659.64020129913 615974.9541009527,-149098.57956373924 615388.662548036,-149784.49871371555 615347.4508249329,-166594.34673252536 615686.0229842511,-175350.7870182643 617283.3764730536,-175395.1652660855 617285.9848211041,-175551.32420191937 617310.4367634848,-175649.98864525682 617337.9569586318,-183134.64872185385 618703.3117712858,-183733.54827817652 618863.0073650978,-191118.17242042557 621652.4538701903))'::geometry);


-- count districts within the buffer zone
select count(*) number_of_districts_within_blast_zone
from (select *
      from lab.districts
      where st_within(lab.districts.geom,
                      'SRID=3857;POLYGON((-191118.17242042557 621652.4538701903,-199101.92254988957 623879.3387958482,-220494.8719377939 635716.68955287,-221950.88605383062 636760.7454686048,-240554.54984801554 653837.5271344304,-254542.9330515406 674862.2248488013,-255216.3395802076 676199.3772338119,-264885.2274150037 705440.3110336106,-265140.0298853101 706905.7198728983,-266166.89282114385 735382.8100427352,-266000.99394713045 737035.1077898624,-264108.4458936043 748948.4660998276,-263699.58177342254 750820.6220378679,-252999.5662026307 779237.4778722662,-252623.7609967047 779916.9307157444,-243540.92021325894 793666.8648507552,-242544.46055259678 794944.6449351558,-230451.65494614816 807999.4002620823,-216328.00105989474 818824.6016450864,-215572.69373720096 819307.7841537271,-194011.3615419908 829845.2424900266,-170620.55934353214 835211.754088266,-169305.59659498718 835358.3126413332,-159767.3506369016 835983.6082145763,-158848.24172615388 836001.9280607284,-142450.3184085808 835043.7093895751,-126402.48644209199 831539.8313485903,-125128.47409056046 831155.1158401447,-110057.41781727126 825303.9429342723,-108086.8576970911 824358.3920142337,-92131.15893783516 814883.4156489098,-78092.63044916138 802747.5507068355,-77294.09770739752 801923.1831640922,-64431.10253326295 785713.2361970431,-60159.88982569306 777374.680010484,-55892.34797492894 769841.459298391,-55073.938559232934 767445.5349874985,-54997.0278201473 767295.3845353614,-54872.732381694615 766856.4963437339,-51116.64877735616 755860.4204814764,-50104.79170707648 753254.20523574,-49975.81987273061 752520.6010039148,-49579.582242380624 751360.6004549982,-48713.06456105364 745337.9270107574,-46541.508323515314 732985.9057063833,-46999.96325010543 712411.8741772063,-51462.54595633369 692322.4164972848,-52170.64657135942 690162.0914865402,-60935.732088423654 670503.7380998341,-73525.19135832688 653045.6999142442,-76320.7809065458 650489.5801312075,-76970.20265782835 649772.8371819607,-90704.41749940865 637092.8996012679,-106469.36694675137 627049.2029069387,-123765.42082300514 619960.0566484197,-142044.42447116415 616050.1333760857,-142659.64020129913 615974.9541009527,-149098.57956373924 615388.662548036,-149784.49871371555 615347.4508249329,-166594.34673252536 615686.0229842511,-175350.7870182643 617283.3764730536,-175395.1652660855 617285.9848211041,-175551.32420191937 617310.4367634848,-175649.98864525682 617337.9569586318,-183134.64872185385 618703.3117712858,-183733.54827817652 618863.0073650978,-191118.17242042557 621652.4538701903))'::geometry))
         as new_table;
