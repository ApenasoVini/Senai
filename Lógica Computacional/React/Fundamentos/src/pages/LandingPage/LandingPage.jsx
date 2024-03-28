import React from "react";
import './LandingPage.css';
import Header from '../../components/Header';
import Galeria from '../../components/Galeria';
import Sobre from '../../components/Sobre';

const LandingPage = () => {

    return (
        <div>
            <Header />
            <Galeria />
            <Sobre />
        </div>
    )
}

export default LandingPage