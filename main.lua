using UnityEngine;

public class InfiniteJump : MonoBehaviour {
    public float jumpForce = 5f;
    private Rigidbody rb;

    void Start() {
        rb = GetComponent<Rigidbody>();
    }

    void Update() {
        // سيقفز اللاعب في كل مرة تضغط فيها على زر القفز بغض النظر عن مكانه
        if (Input.GetButtonDown("Jump")) {
            rb.velocity = new Vector3(rb.velocity.x, jumpForce, rb.velocity.z);
        }
    }
}
