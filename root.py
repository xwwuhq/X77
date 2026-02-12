<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GOGO MON CHIEN</title>
    <style>
        :root {
            --primary: #00f2ff;
            --secondary: #7000ff;
            --bg: #0a0a0c;
            --text: #ffffff;
        }

        body, html {
            margin: 0;
            padding: 0;
            width: 100%;
            height: 100%;
            background-color: var(--bg);
            color: var(--text);
            font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
            overflow: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Effet de grille en arrière-plan */
        .grid {
            position: absolute;
            width: 200%;
            height: 200%;
            background-image: 
                linear-gradient(to right, rgba(0, 242, 255, 0.1) 1px, transparent 1px),
                linear-gradient(to bottom, rgba(0, 242, 255, 0.1) 1px, transparent 1px);
            background-size: 50px 50px;
            transform: perspective(500px) rotateX(60deg);
            animation: move 20s linear infinite;
            z-index: 1;
        }

        @keyframes move {
            from { transform: perspective(500px) rotateX(60deg) translateY(0); }
            to { transform: perspective(500px) rotateX(60deg) translateY(50px); }
        }

        /* Container principal */
        .content {
            position: relative;
            z-index: 10;
            text-align: center;
        }

        h1 {
            font-size: 8vw;
            font-weight: 900;
            text-transform: uppercase;
            margin: 0;
            letter-spacing: -2px;
            background: linear-gradient(to right, var(--primary), var(--secondary));
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            filter: drop-shadow(0 0 20px rgba(0, 242, 255, 0.5));
            animation: pulse 2s ease-in-out infinite;
        }

        @keyframes pulse {
            0%, 100% { transform: scale(1); filter: brightness(1); }
            50% { transform: scale(1.05); filter: brightness(1.3); }
        }

        .subtitle {
            font-size: 1.5rem;
            opacity: 0.8;
            margin-top: 10px;
            letter-spacing: 5px;
            text-transform: uppercase;
        }

        /* Particules de déco */
        .particles span {
            position: absolute;
            display: block;
            width: 5px;
            height: 5px;
            background: var(--primary);
            box-shadow: 0 0 10px var(--primary);
            border-radius: 50%;
            animation: float 5s infinite linear;
        }

        @keyframes float {
            0% { transform: translateY(100vh) scale(0); opacity: 0; }
            50% { opacity: 1; }
            100% { transform: translateY(-100vh) scale(1.5); opacity: 0; }
        }

        /* Overlay de scanline pour le style rétro-futuriste */
        .overlay {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background: linear-gradient(rgba(18, 16, 16, 0) 50%, rgba(0, 0, 0, 0.25) 50%), 
                        linear-gradient(90deg, rgba(255, 0, 0, 0.06), rgba(0, 255, 0, 0.02), rgba(0, 0, 255, 0.06));
            background-size: 100% 4px, 3px 100%;
            pointer-events: none;
            z-index: 20;
        }
    </style>
</head>
<body>

    <div class="grid"></div>
    <div class="overlay"></div>

    <div class="content">
        <div class="subtitle">L'ÉLITE ARRIVE</div>
        <h1>GOGO MON CHIEN</h1>
        <div class="subtitle">SYSTÈME ACTIVÉ</div>
    </div>

    <div class="particles" id="particles"></div>

    <script>
        // Génération dynamique de particules pour le style
        const container = document.getElementById('particles');
        for (let i = 0; i < 50; i++) {
            const span = document.createElement('span');
            span.style.left = Math.random() * 100 + 'vw';
            span.style.animationDuration = (Math.random() * 3 + 2) + 's';
            span.style.animationDelay = Math.random() * 5 + 's';
            container.appendChild(span);
        }

        // Petit effet de glitch aléatoire sur le titre
        const title = document.querySelector('h1');
        setInterval(() => {
            if(Math.random() > 0.95) {
                title.style.transform = `translate(${Math.random()*10}px, ${Math.random()*10}px)`;
                setTimeout(() => title.style.transform = 'translate(0,0)', 50);
            }
        }, 100);
    </script>
</body>
</html>
