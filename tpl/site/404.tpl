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
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #495057;
        }
        
        .container {
            text-align: center;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.08);
            max-width: 600px;
            margin: 0 auto;
            border: 1px solid rgba(233, 236, 239, 0.5);
        }
        
        .logo {
            margin-bottom: 2rem;
        }
        
        .logo img {
            max-width: 200px;
            height: auto;
            filter: grayscale(20%) opacity(0.9);
            transition: transform 0.3s ease;
        }
        
        .logo img:hover {
            transform: scale(1.05);
        }
        
        .error-code {
            font-size: 10rem;
            font-weight: 800;
            margin-bottom: 1rem;
            color: #6c757d;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            animation: pulse 2s infinite;
        }
        
        .error-message {
            font-size: 2rem;
            margin-bottom: 2rem;
            font-weight: 600;
            color: #495057;
        }
        
        .funny-text {
            font-size: 1.2rem;
            margin-bottom: 2rem;
            line-height: 1.6;
            color: #6c757d;
            opacity: 0.9;
        }
        
        .home-button {
            background: linear-gradient(45deg, #6c757d, #868e96);
            border: none;
            padding: 1rem 2rem;
            font-size: 1.2rem;
            font-weight: 600;
            border-radius: 50px;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(108, 117, 125, 0.3);
            position: relative;
            overflow: hidden;
            color: white;
        }
        
        .home-button:hover {
            transform: translateY(-3px);
            box-shadow: 0 6px 20px rgba(108, 117, 125, 0.4);
            background: linear-gradient(45deg, #5a6268, #727b84);
        }
        
        .home-button:active {
            transform: translateY(1px);
        }
        
        .home-button::before {
            content: '🏠';
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
            color: #868e96;
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
            
            .logo img {
                max-width: 150px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Место для логотипа - замените src на путь к вашему логотипу -->
        <div class="logo">
            <img src="logo.png" alt="Логотип">
        </div>
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

