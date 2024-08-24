-- Compute Convex Hull of the Lake
select st_asewkt(st_convexhull(lab.lake.geom)) as convex_hull
from lake;