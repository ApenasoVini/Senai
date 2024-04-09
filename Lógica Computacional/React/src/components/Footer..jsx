import React from "react";
import Logo from "../img/icon.svg"

const Footer = () => {

    return (
        <>
            <footer className="Footer">
                <div className="Footer-Container">
                    <figure>
                        <img src={Logo} alt="Logo" />
                    </figure>
                    <div className="Socials">
                        <a target="_blank" href="https://github.com/ApenasoVini">Github</a>
                        <a target="_blank" href="https://www.instagram.com/sf.vini/">Instagram</a>
                        <a target="_blank" href="https://www.linkedin.com/in/apenasovini/">LinkedIn</a>
                    </div>
                    <div className="Info">
                        <h1>ViolinHub</h1>
                        <p>Site criado com React e Vite</p>
                    </div>
                </div>
                <p>&copy; 2023 ViolinHub. Todos os direitos reservados.</p>
            </footer>
        </>
    )
}

export default Footer