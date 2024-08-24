-- buffer zone of 105 km around the lake
select st_asewkt(st_buffer(geom, 105000.0)) as blast_diameter
from lake;

