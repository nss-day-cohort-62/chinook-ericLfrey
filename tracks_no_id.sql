SELECT a.title, mt.name, g.name
FROM track as t 
JOIN album AS a 
  ON a.albumid = t.albumid
JOIN mediatype AS mt 
  ON mt.mediatypeid = t.mediatypeid
JOIN genre AS g 
  ON g.genreid = t.genreid
ORDER BY t.TrackId
