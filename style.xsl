<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
    <xsl:template match="/">
        
        <html lang="en">
            
            <head>
                <title>1ª División</title>
                <!-- Required meta tags -->
                <meta charset="utf-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
                <link rel="stylesheet" type="text/css" href="estilo.css"/>
            </head>
            
            <body>
                
                <div class="bg-img">

                    <div class="jumbotron jumbotron-fluid text-center fondo">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="titulo">Equipos LaLiga</div>
                                    <div class="texto"><p>Actuales 20 equipos de 1ª división</p></div>
                                    <div class="col align-content-center"><img src="logo.png" alt="logo" class="img-fluid"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                
                    <div class="container img-fluid">
                        <table class="table table-dark text-center">
                            <thead>
                                <tr>
                                    <th scope="col">Equipo</th>
                                    <th scope="col">Escudo</th>
                                    <th scope="col">Fundación</th>
                                    <th scope="col">Estadio</th>
                                    <th scope="col">Foto del estadio</th>
                                </tr>
                            </thead>
                            <xsl:for-each select="Clubes/Club">
                                <tbody>
                                    <tr>
                                        <td class="align-middle"><xsl:value-of select="Equipo"/></td>
                                        <td class="align-middle"><img src="{Escudo}" alt="Escudo" class="img-fluid"/></td>
                                        <td class="align-middle"><xsl:value-of select="Fundacion"/></td>
                                        <td class="align-middle"><xsl:value-of select="Estadio"/></td>
                                        <td class="align-middle"><img src="{FotoEstadio}" alt="Foto del estadio" class="img-fluid"/></td>
                                    </tr>
                                </tbody>
                            </xsl:for-each>
                        </table>
                    </div>
                </div>
                
                <!-- Optional JavaScript -->
                <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                        crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                        crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                        crossorigin="anonymous"></script>
            </body>
            
        </html>
        
    </xsl:template>
</xsl:stylesheet>