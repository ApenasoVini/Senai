import React from "react";
import './LandingPage.css';
import Header from '../../components/Header';
import Galeria from '../../components/Galeria';
import Sobre from '../../components/Sobre';
import Footer from "../../components/Footer.";

const LandingPage = () => {

    return (
        <div>
            <Header />
            <Galeria />
            <Sobre />
            <Footer />
        </div>
    )
}

export default LandingPage