<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.net.InetAddress" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Web Application</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #333;
            min-height: 100vh;
            padding: 40px 20px;
        }

        .container {
            max-width: 850px;
            margin: 0 auto;
        }

        .header {
            text-align: center;
            color: white;
            margin-bottom: 30px;
        }

        .header h1 {
            font-size: 32px;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 16px;
        }

        .card {
            background: white;
            padding: 25px;
            margin-bottom: 20px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        .card h2 {
            color: #5b4bdb;
            margin-bottom: 20px;
            border-bottom: 2px solid #eee;
            padding-bottom: 10px;
        }

        .info {
            display: flex;
            justify-content: space-between;
            gap: 15px;
            padding: 12px 0;
            border-bottom: 1px solid #eee;
        }

        .info:last-child {
            border-bottom: none;
        }

        .label {
            font-weight: bold;
            color: #555;
        }

        .value {
            color: #222;
            overflow-wrap: anywhere;
            text-align: right;
        }

        .status {
            display: inline-block;
            background: #dcfce7;
            color: #166534;
            padding: 8px 15px;
            border-radius: 20px;
            font-weight: bold;
        }

        .footer {
            text-align: center;
            color: white;
            margin-top: 25px;
            font-size: 14px;
        }

        @media (max-width: 600px) {
            body {
                padding: 25px 12px;
            }

            .header h1 {
                font-size: 25px;
            }

            .card {
                padding: 18px;
            }

            .info {
                flex-direction: column;
                gap: 6px;
            }

            .value {
                text-align: left;
            }
        }
    </style>
</head>

<body>

<div class="container">

    <div class="header">
        <h1>Welcome to My Web Application</h1>
        <p>Java | Maven | JSP</p>
    </div>

    <%
        String hostName = "Unavailable";
        String serverIP = "Unavailable";

        try {
            InetAddress inetAddress = InetAddress.getLocalHost();
            hostName = inetAddress.getHostName();
            serverIP = inetAddress.getHostAddress();
        } catch (Exception e) {
            application.log("Unable to retrieve server information", e);
        }

        String clientIP = request.getRemoteAddr();
    %>

    <div class="card">
        <h2>🖥️ Server Information</h2>

        <div class="info">
            <span class="label">Host Name</span>
            <span class="value"><%= hostName %></span>
        </div>

        <div class="info">
            <span class="label">Server IP Address</span>
            <span class="value"><%= serverIP %></span>
        </div>
    </div>

    <div class="card">
        <h2>🌐 Client Information</h2>

        <div class="info">
            <span class="label">Client IP Address</span>
            <span class="value"><%= clientIP %></span>
        </div>
    </div>

    <div class="card">
        <h2>🚀 Application Status</h2>
        <p>
            <span class="status">● Application Running</span>
        </p>
        <br>
        <p>Your Java web application is ready for testing.</p>
    </div>

    <div class="footer">
        <p>Java Maven Web Application | Testing Environment</p>
    </div>

</div>

</body>
</html>