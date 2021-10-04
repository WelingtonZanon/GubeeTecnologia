import "./styles.css"

type Props = {
    name: string;
}

const StackBadge = ({name} : Props) => {
    return (
        <div className="category-badge-container">{name}</div>
    )  
};

export default StackBadge;