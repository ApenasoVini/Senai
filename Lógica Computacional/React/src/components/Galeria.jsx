import React from 'react';
import Img1 from '../img/img1.jpg'
import Img2 from '../img/img2.jpg'
import Img3 from '../img/img3.jpg'
import Img4 from '../img/img4.jpg'
import Img5 from '../img/img5.jpg'
import Img6 from '../img/img6.jpg'

const Galeria = () => {

    return (
        <>
            <div className='Gallery-Container'>
                <img src={Img1} alt='Foto 1' />
                <img src={Img2} alt='Foto 2' />
                <img src={Img3} alt='Foto 3' />
                <img src={Img4} alt='Foto 4' />
                <img src={Img5} alt='Foto 5' />
                <img src={Img6} alt='Foto 6' />
            </div>
        </>
    )
}

export default Galeria