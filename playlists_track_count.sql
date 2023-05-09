SELECT pl.name, COUNT(pt.TrackId) AS number_of_tracks
FROM playlist AS pl
JOIN playlisttrack AS pt 
  ON pt.PlaylistId = pl.PlaylistId
GROUP BY pl.PlaylistId
