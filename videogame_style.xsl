<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Videogame Documentation</title>
                <style type="text/css">
                    body {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        color: #333;
                        line-height: 1.6;
                        max-width: 1200px;
                        margin: 0 auto;
                        padding: 20px;
                        background-color: #f5f5f5;
                    }
                    
                    .game-container {
                        background-color: white;
                        border-radius: 8px;
                        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
                        margin-bottom: 30px;
                        padding: 25px;
                    }
                    
                    h1 {
                        color: #2a56c6;
                        font-size: 2.5em;
                        margin-bottom: 10px;
                        border-bottom: 3px solid #2a56c6;
                        padding-bottom: 10px;
                    }
                    
                    h2 {
                        color: #333;
                        font-size: 1.8em;
                        margin-top: 25px;
                        margin-bottom: 15px;
                        border-bottom: 1px solid #ddd;
                        padding-bottom: 8px;
                    }
                    
                    h3 {
                        color: #666;
                        font-size: 1.4em;
                        margin-top: 20px;
                    }
                    
                    .info-grid {
                        display: grid;
                        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
                        gap: 20px;
                        margin: 20px 0;
                    }
                    
                    .info-card {
                        background-color: #f9f9f9;
                        border-radius: 6px;
                        padding: 15px;
                    }
                    
                    .info-card h4 {
                        margin-top: 0;
                        color: #2a56c6;
                        font-size: 1.2em;
                    }
                    
                    .feature {
                        background-color: #e9f0ff;
                        border-left: 4px solid #2a56c6;
                        padding: 10px 15px;
                        margin-bottom: 15px;
                    }
                    
                    .mechanic {
                        background-color: #f5f9ff;
                        padding: 15px;
                        margin-bottom: 20px;
                        border-radius: 6px;
                    }
                    
                    .controls {
                        margin-top: 10px;
                        background-color: #eee;
                        padding: 10px;
                        border-radius: 4px;
                    }
                    
                    .control {
                        margin-bottom: 5px;
                    }
                    
                    .control-button {
                        background-color: #333;
                        color: white;
                        padding: 2px 8px;
                        border-radius: 4px;
                        font-weight: bold;
                        margin-right: 10px;
                    }
                    
                    .update {
                        border-bottom: 1px solid #ddd;
                        padding-bottom: 10px;
                        margin-bottom: 10px;
                    }
                    
                    .update-version {
                        font-weight: bold;
                        color: #2a56c6;
                    }
                    
                    .update-date {
                        color: #666;
                        font-style: italic;
                    }
                    
                    .update-changes {
                        margin-top: 5px;
                        padding-left: 20px;
                    }
                    
                    .media-container {
                        display: grid;
                        grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                        gap: 15px;
                        margin-top: 15px;
                        margin-bottom: 25px;
                    }
                    
                    .media-item {
                        background-color: #eee;
                        border-radius: 4px;
                        padding: 10px;
                        text-align: center;
                    }
                    
                    .detailed-description {
                        font-style: italic;
                        padding: 15px;
                        background-color: #f9f9f9;
                        border-radius: 6px;
                        margin: 15px 0;
                    }
                </style>
            </head>
            <body>
                <h1>Videogame Documentation</h1>
                
                <xsl:for-each select="videogame_documentation/game">
                    <div class="game-container">
                        <h1><xsl:value-of select="title"/></h1>
                        
                        <div class="info-grid">
                            <div class="info-card">
                                <h4>Platform</h4>
                                <div><xsl:value-of select="platform"/></div>
                            </div>
                            
                            <div class="info-card">
                                <h4>Release Date</h4>
                                <div><xsl:value-of select="release_date"/></div>
                            </div>
                            
                            <div class="info-card">
                                <h4>Developer</h4>
                                <div><xsl:value-of select="developer"/></div>
                            </div>
                            
                            <div class="info-card">
                                <h4>Publisher</h4>
                                <div><xsl:value-of select="publisher"/></div>
                            </div>
                            
                            <div class="info-card">
                                <h4>Genre</h4>
                                <div><xsl:value-of select="genre"/></div>
                            </div>
                            
                            <div class="info-card">
                                <h4>Rating</h4>
                                <div><xsl:value-of select="rating"/></div>
                            </div>
                        </div>
                        
                        <h2>Description</h2>
                        <div><xsl:value-of select="description/summary"/></div>
                        <div class="detailed-description">
                            <xsl:value-of select="description/detailed"/>
                        </div>
                        
                        <h2>Features</h2>
                        <xsl:for-each select="features/feature">
                            <div class="feature">
                                <h3><xsl:value-of select="@name"/></h3>
                                <div><xsl:value-of select="description"/></div>
                            </div>
                        </xsl:for-each>
                        
                        <h2>Gameplay</h2>
                        
                        <h3>Mechanics</h3>
                        <xsl:for-each select="gameplay/mechanics/mechanic">
                            <div class="mechanic">
                                <h4><xsl:value-of select="@name"/></h4>
                                <div><xsl:value-of select="description"/></div>
                                
                                <div class="controls">
                                    <xsl:for-each select="controls/control">
                                        <div class="control">
                                            <span class="control-button"><xsl:value-of select="@button"/></span>
                                            <span><xsl:value-of select="."/></span>
                                        </div>
                                    </xsl:for-each>
                                </div>
                            </div>
                        </xsl:for-each>
                        
                        <h3>Progression</h3>
                        <div>
                            <strong>Main Quest:</strong> <xsl:value-of select="gameplay/progression/main_quest"/>
                        </div>
                        
                        <h4>Side Content</h4>
                        <ul>
                            <li>
                                <strong>Shrines (<xsl:value-of select="gameplay/progression/side_content/shrines/@count"/>):</strong>
                                <xsl:value-of select="gameplay/progression/side_content/shrines"/>
                            </li>
                            <li>
                                <strong>Korok Seeds (<xsl:value-of select="gameplay/progression/side_content/korok_seeds/@count"/>):</strong>
                                <xsl:value-of select="gameplay/progression/side_content/korok_seeds"/>
                            </li>
                            <li>
                                <strong>Side Quests (<xsl:value-of select="gameplay/progression/side_content/side_quests/@count"/>):</strong>
                                <xsl:value-of select="gameplay/progression/side_content/side_quests"/>
                            </li>
                        </ul>
                        
                        <h2>Technical Specifications</h2>
                        <ul>
                            <li><strong>Resolution:</strong> <xsl:value-of select="technical_specs/resolution"/></li>
                            <li><strong>Framerate:</strong> <xsl:value-of select="technical_specs/framerate"/></li>
                            <li><strong>File Size:</strong> <xsl:value-of select="technical_specs/file_size"/></li>
                            <li><strong>System Requirements:</strong> <xsl:value-of select="technical_specs/system_requirements"/></li>
                        </ul>
                        
                        <h2>Media</h2>
                        
                        <h3>Screenshots</h3>
                        <div class="media-container">
                            <xsl:for-each select="media/screenshots/screenshot">
                                <div class="media-item">
                                    <div>Image: <xsl:value-of select="@url"/></div>
                                    <div><xsl:value-of select="@description"/></div>
                                </div>
                            </xsl:for-each>
                        </div>
                        
                        <h3>Videos</h3>
                        <div class="media-container">
                            <xsl:for-each select="media/videos/video">
                                <div class="media-item">
                                    <div>Video: <xsl:value-of select="@url"/></div>
                                    <div><xsl:value-of select="@description"/></div>
                                </div>
                            </xsl:for-each>
                        </div>
                        
                        <h2>Updates</h2>
                        <xsl:for-each select="updates/update">
                            <div class="update">
                                <span class="update-version">Version <xsl:value-of select="@version"/></span>
                                <span class="update-date"> - <xsl:value-of select="@date"/></span>
                                
                                <ul class="update-changes">
                                    <xsl:for-each select="change">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </xsl:for-each>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>