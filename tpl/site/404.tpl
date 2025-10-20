<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 - Страница не найдена</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }
        
        .container {
            text-align: center;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: 0 auto;
        }
        
        .error-code {
            font-size: 10rem;
            font-weight: 800;
            margin-bottom: 1rem;
            text-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            animation: pulse 2s infinite;
        }
        
        .error-message {
            font-size: 2rem;
            margin-bottom: 2rem;
            font-weight: 600;
        }
        
        .funny-text {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            line-height: 1.6;
            opacity: 0.9;
        }
        
        .home-button {
            background: linear-gradient(45deg, #ff6b6b, #ff8e53);
            border: none;
            padding: 1rem 2rem;
            font-size: 1.2rem;
            font-weight: 600;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(255, 107, 107, 0.4);
            position: relative;
            overflow: hidden;
        }
        
        .home-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(255, 107, 107, 0.6);
        }
        
        .home-button:active {
            transform: translateY(1px);
        }
        
        .home-button::before {
            content: '🚀';
            margin-right: 8px;
            animation: bounce 1s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-5px); }
        }
        
        .emoji {
            font-size: 2rem;
            margin: 1rem 0;
            animation: float 3s ease-in-out infinite;
        }
        
        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }
        
        @media (max-width: 600px) {
            .error-code {
                font-size: 6rem;
            }
            
            .error-message {
                font-size: 1.5rem;
            }
            
            .container {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="error-code">404</div>
        <div class="emoji">😅</div>
        <div class="error-message">Страница потерялась!</div>
        <div class="funny-text">
            Похоже, вы нашли секретную страницу, которой не существует!<br>
            Не переживайте, даже лучшие навигаторы иногда сбиваются с пути.<br>
            Давайте вернемся туда, где всё работает как надо!
        </div>
        <button class="home-button" onclick="window.location.href='https://solarcity23.ru/'">
            Вернуться домой (и забыть об этом кошмаре!)
        </button>
    </div>
</body>
</html>